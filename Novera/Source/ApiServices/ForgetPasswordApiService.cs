using System;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;
using Novera.Source.Response;
using Novera.Source.Response.CommpnPages;
using Telerik.Windows.Documents.Spreadsheet.Expressions.Functions;

namespace Novera.Source.Services
{

    public class ForgetPasswordApiService<TResponse>
    {
        private readonly HttpClient _client;

        public ForgetPasswordApiService()
        {
            _client = new HttpClient();
        }

        public async Task<Object?> PostAsync(string apiUrl, string requestData, Page page)
        {
            try
            {
                var content = new StringContent(requestData, Encoding.UTF8, "application/json");
                var response = await _client.PostAsync(apiUrl, content);

                response.EnsureSuccessStatusCode();

                var responseBody = await response.Content.ReadAsStringAsync();

                // Deserialize the response body to the specified type
                var forgetPasswordResponse = JsonSerializer.Deserialize<TResponse>(responseBody);
                return forgetPasswordResponse;
            }
            catch (Exception ex)
            {
                // Handle exceptions here
                Console.WriteLine($"Error: {ex.Message}");

                return new ForgetPasswordResponse { success = false, message = ex.Message };
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
