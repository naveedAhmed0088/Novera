using System;
using System.Net.Http;
using System.Threading.Tasks;

namespace Novera.Source.Model
{
    public class LoginModel
    {
        public async Task<string> LoginAsync()
        {
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage(HttpMethod.Post, "http://localhost:5263/api/Account/Login");
                    var content = new StringContent("{\n  \"username\": \"client@test.com\",\n  \"password\": \"123456\"\n}", null, "application/json");
                    request.Content = content;

                    var response = await client.SendAsync(request);
                    response.EnsureSuccessStatusCode();

                    var responseContent = await response.Content.ReadAsStringAsync();
                    Console.WriteLine("An error occurred: " + responseContent);

                    return responseContent;

                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
                Console.WriteLine("An error occurred: " + ex.Message);
                return null;
            }
        }
    }
}
