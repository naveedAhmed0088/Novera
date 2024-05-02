using Novera.Source.Response.CommpnPages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Novera.Source.ApiServices
{
    public class ApiService<TResponse>
    {

        private readonly HttpClient _client;

        public ApiService()
        {
            _client = new HttpClient();
        }




        public async Task<object?> PostAsync(string apiUrl, string requestData, Page page)
        {
            try
            {
                var content = new StringContent(requestData, Encoding.UTF8, "application/json");
                var response = await _client.PostAsync(apiUrl, content);


                var responseBody = await response.Content.ReadAsStringAsync();

                // Check if the response indicates success
                if (response.IsSuccessStatusCode)
                {
                    var successRespnse = JsonSerializer.Deserialize <TResponse> (responseBody);
                    return successRespnse;

                }
                else
                {

                    // Deserialize the error response
                    var errorResponse = JsonSerializer.Deserialize <TResponse> (responseBody);


                    return errorResponse;
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions here
                Console.WriteLine($"Error: {ex.Message}");

                return new RegisterResponse
                {
                    success = false,
                    message = ex.Message,
                    data=null,
                };
            }
        }


        public async Task<object?> PostAsyncWithHeader(string apiUrl, string requestData, Page page,HttpMethod httpmethod,string token)
        {
            try
            {
                var request = new HttpRequestMessage(httpmethod, apiUrl);
                request.Headers.Add("Authorization", $"Bearer {token}");



                var content = new StringContent(requestData, Encoding.UTF8, "application/json");
                request.Content = content;
                var response = await _client.SendAsync(request);
                var responseBody = await response.Content.ReadAsStringAsync();

                // Check if the response indicates success
                if (response.IsSuccessStatusCode)
                {
                    var successRespnse = JsonSerializer.Deserialize<TResponse>(responseBody);
                    return successRespnse;

                }
                else
                {

                    // Deserialize the error response
                    var errorResponse = JsonSerializer.Deserialize<TResponse>(responseBody);


                    return errorResponse;
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions here
                Console.WriteLine($"Error: {ex.Message}");

                return new RegisterResponse
                {
                    success = false,
                    message = ex.Message,
                    data = null,
                };
            }
        }


        public async Task<object?> getAsync(string apiUrl, Page page,string token,HttpMethod http_Method,string requestBody="")
        {
            try
            {
                var request = new HttpRequestMessage(http_Method, apiUrl);
                request.Headers.Add("Authorization", $"Bearer {token}");

                if (requestBody != "") {
                    var content = new StringContent(requestBody, Encoding.UTF8, "application/json");
                    request.Content = content;

                }

                var response = await _client.SendAsync(request);

                

                var responseBody = await response.Content.ReadAsStringAsync();

                // Check if the response indicates success
                if (response.IsSuccessStatusCode)
                {
                    var successRespnse = JsonSerializer.Deserialize<TResponse>(responseBody);
                    return successRespnse;

                }
                else
                {

                    // Deserialize the error response
                    var errorResponse = JsonSerializer.Deserialize<TResponse>(responseBody);


                    return errorResponse;
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions here
                Console.WriteLine($"Error: {ex.Message}");

                return new RegisterResponse
                {
                    success = false,
                    message = ex.Message,
                    data = null,
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

    
