using Novera.Source.Response.CommpnPages;
using System.Text;
using System.Text.Json;

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

                if (response.IsSuccessStatusCode)
                {
                    var successRespnse = JsonSerializer.Deserialize <TResponse> (responseBody);
                    return successRespnse;

                }
                else
                {

                    var errorResponse = JsonSerializer.Deserialize <TResponse> (responseBody);


                    return errorResponse;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");

               #pragma warning disable CS8625 
                return new RegisterResponse
                {
                    success = false,
                    message = ex.Message,
                    data=null,
                };
            }
        }


        public async Task<object?> PostAsyncWithHeader(string apiUrl, string requestData,HttpMethod httpmethod,string token, Page page=null)
        {
            try
            {
                var request = new HttpRequestMessage(httpmethod, apiUrl);
                request.Headers.Add("Authorization", $"Bearer {token}");



                if (requestData != "")
                {
                    var content = new StringContent(requestData, Encoding.UTF8, "application/json");
                    request.Content = content;
                }
              
                
                var response = await _client.SendAsync(request);
                var responseBody = await response.Content.ReadAsStringAsync();

                if (response.IsSuccessStatusCode)
                {
                    var successRespnse = JsonSerializer.Deserialize<TResponse>(responseBody);
                    return successRespnse;

                }
                else
                {

                    var errorResponse = JsonSerializer.Deserialize<TResponse>(responseBody);


                    return errorResponse;
                }
            }
            catch (Exception ex)
            {
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
                    

                    var requestData = JsonSerializer.Deserialize<Dictionary<string, object>>(requestBody);

                    var formData = new MultipartFormDataContent();

                    #pragma warning disable CS8602
                    foreach (var item in requestData)
                    {
                        if (item.Value is string stringValue)
                        {
                            formData.Add(new StringContent(stringValue), item.Key);
                        }
                        else
                        {
                           #pragma warning disable CS8604
                            formData.Add(new StringContent(item.Value.ToString()), item.Key);
                        }

                        
                    }

                    request.Content = formData;

                }

                var response = await _client.SendAsync(request);

                

                var responseBody = await response.Content.ReadAsStringAsync();

                if (response.IsSuccessStatusCode)
                {
                    var successRespnse = JsonSerializer.Deserialize<TResponse>(responseBody);
                    return successRespnse;

                }
                else
                {

                    var errorResponse = JsonSerializer.Deserialize<TResponse>(responseBody);


                    return errorResponse;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");

                return new RegisterResponse
                {
                    success = false,
                    message = ex.Message,
                    data = null,
                };
            }
        }

        [Obsolete]
        private void DisplayAlert(Page page, string title, string message)
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                await page.DisplayAlert(title, message, "OK");
            });
        }
    }
}

    
