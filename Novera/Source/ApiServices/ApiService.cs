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
                    // var content = new StringContent(requestBody, Encoding.UTF8, "application/json");
                    // request.Content = content;


                    // Split the request body into key-value pairs assuming it's in JSON format
                    var requestData = JsonSerializer.Deserialize<Dictionary<string, object>>(requestBody);

                    // Create a MultipartFormDataContent to hold the form data
                    var formData = new MultipartFormDataContent();

                    // Add each key-value pair to the form data
                    foreach (var item in requestData)
                    {
                        if (item.Value is string stringValue)
                        {
                            // If the value is a string, add it directly
                            formData.Add(new StringContent(stringValue), item.Key);
                        }
                        else
                        {
                            // If the value is not a string, convert it to a string before adding
                            formData.Add(new StringContent(item.Value.ToString()), item.Key);
                        }

                        
                    }

                    // Assign the multipart form data content to the request
                    request.Content = formData;

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

    
