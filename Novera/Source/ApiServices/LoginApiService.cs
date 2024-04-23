using Novera.Source.Response.CommpnPages.Failure;
using Novera.Source.Response.CommpnPages.Success;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using static System.Runtime.InteropServices.JavaScript.JSType;
using Error = Novera.Source.Response.CommpnPages.Failure.Error;

namespace Novera.Source.Services
{
    public class LoginApiService
    {
        private readonly HttpClient _client;

        public LoginApiService()
        {
            _client = new HttpClient();
        }




        public async Task<object?> PostAsync(string apiUrl, string requestData,Page page)
        {
            try
            {
                var content = new StringContent(requestData, Encoding.UTF8, "application/json");
                var response = await _client.PostAsync(apiUrl, content);

                
                var responseBody = await response.Content.ReadAsStringAsync();

                // Check if the response indicates success
                if (response.IsSuccessStatusCode)
                {
                    var successRespnse= JsonSerializer.Deserialize<LoginSuccessResponse>(responseBody);
                    return successRespnse;

                }
                else
                {
                    
                    // Deserialize the error response
                    var errorResponse = JsonSerializer.Deserialize<LoginFailureResponse>(responseBody);
                  

                    return errorResponse;
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions here
                Console.WriteLine($"Error: {ex.Message}");
               
                return new LoginFailureResponse
                {
                    success = false,
                    error = new Error { code = 0, message = ex.Message }
                };
            }
        }

        private void DisplayAlert(Page page, string title, string message)
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                await page.DisplayAlert(title, message, "OK");
            });
        }
    }
}






