using System;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.Json;
using System.Threading.Tasks;
using System.Windows.Input;
using Novera.Source.Model.Emails;
using Novera.Source.Pages.Common.Login;
using Novera.Source.Response.CRMPages;

namespace Novera.Source.ViewModel.Emails
{
    public class InboxViewModel
    {
        private readonly HttpClient _httpClient;
        public ObservableCollection<Datum> InboxEmails { get; }

        public InboxViewModel()
        {
            // This default constructor is added to satisfy XAML requirements
            // You can leave it empty or initialize properties if needed
            InboxEmails = new ObservableCollection<Datum> ();
            LoadInboxEmailsAsync();
        }


        public async Task RefreshData()
        {
            // Clear existing emails and reload
            InboxEmails.Clear();
            await LoadInboxEmailsAsync();
        }











        private async Task LoadInboxEmailsAsync()
        {
            try
            {
                var client = new HttpClient();
                string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
                int id = int.Parse(await SecureStorage.Default.GetAsync("userid"));


                // Create HttpRequestMessage
                var request = new HttpRequestMessage(HttpMethod.Get, $"http://46.29.2.121/api/Emails?UserId={id}");
                request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", oauthToken);

                var response = await client.SendAsync(request);
                response.EnsureSuccessStatusCode();

                var responseBody = await response.Content.ReadAsStringAsync();

                var emailList = JsonSerializer.Deserialize<InboxPageResponse>(responseBody);

                InboxEmails.Clear();

                // Add each email from the response to InboxEmails collection
                
                    foreach (var email in emailList.data)
                    {
                        InboxEmails.Add(email);
                    }


                

            }
            catch (HttpRequestException ex)
            {
                // Handle HTTP request exceptions
                Console.WriteLine($"HTTP request error: {ex.Message}");
            }
            catch (Exception ex)
            {
                // Handle other exceptions
                Console.WriteLine($"Error: {ex.Message}");
            }
        }
    }




    // Define a class to represent the email data structure
   
}



