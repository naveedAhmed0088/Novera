using Novera.Source.Response.CRMPages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Novera.Source.ApiServices
{
    public class inboxPageApiService
    {
        private readonly HttpClient _client;

        public inboxPageApiService()
        {
            _client = new HttpClient();
        }



        public async Task<object?> markEmail(string apiUrl, string requestData,string token)
        {
            try
            {
                var request = new HttpRequestMessage(HttpMethod.Patch, apiUrl);

                request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);



                var content = new StringContent(requestData, null, "application/json");
                request.Content = content;
                var response = await _client.SendAsync(request);
                var responseBody = await response.Content.ReadAsStringAsync();

                // Check if the response indicates success
                
                    var successRespnse = JsonSerializer.Deserialize<InboxPageMarkResponse>(responseBody);
                return successRespnse;
                
            }
            catch (Exception ex)
            {
                // Handle exceptions here
                Console.WriteLine($"Error: {ex.Message}");

                return new InboxPageMarkResponse
                {
                    success = false,
                    message = ex.Message,
                    data=null,
                };
            }
        }



        public async Task<object?> deleteEmail(string apiUrl, string token)
        {
            try
            {
                var request = new HttpRequestMessage(HttpMethod.Delete, apiUrl);

                


                request.Headers.Add("Authorization", "Bearer " + token);
                var response = await _client.SendAsync(request);
                var responseBody = await response.Content.ReadAsStringAsync();

                // Check if the response indicates success

                var successRespnse = JsonSerializer.Deserialize<InboxPageMarkResponse>(responseBody);
                return successRespnse;

            }
            catch (Exception ex)
            {
                // Handle exceptions here
                Console.WriteLine($"Error: {ex.Message}");

                return new InboxPageMarkResponse
                {
                    success = false,
                    message = ex.Message,
                    data = null,
                };
            }
        }
    }
}
