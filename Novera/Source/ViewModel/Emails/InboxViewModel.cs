using System;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.Json;
using System.Threading.Tasks;
using Novera.Source.Model.Emails;

namespace Novera.Source.ViewModel.Emails
{
    public class InboxViewModel
    {
        private readonly HttpClient _httpClient;

        public InboxViewModel()
        {
            // This default constructor is added to satisfy XAML requirements
            // You can leave it empty or initialize properties if needed
            InboxEmails = new ObservableCollection<Person>();
            LoadInboxEmailsAsync();
        }




        




        public ObservableCollection<Person> InboxEmails { get; }





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

                var emailList = JsonSerializer.Deserialize<Root>(responseBody);

                foreach (var email in emailList.data)
                {
                   
                    InboxEmails.Add(new Person
                    {
                        Name = email.sender,
                        Information = email.subject,
                        Color = Color.FromArgb("#FFAE02"),
                        Date = email.received.ToString("dd MMMM"),
                        IsContrastStarIcon = false,
                        // You might need to set other properties here based on your requirements
                    });
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
    public class Datum
    {
        public int mailId { get; set; }
        public object compCode { get; set; }
        public object accountCode { get; set; }
        public object projectId { get; set; }
        public object businessAnalysisItemId { get; set; }
        public string sender { get; set; }
        public object senderCrypt { get; set; }
        public object senderName { get; set; }
        public string sendTo { get; set; }
        public object sendToCrypt { get; set; }
        public string cc { get; set; }
        public object ccCrypt { get; set; }
        public string bcc { get; set; }
        public object bccCrypt { get; set; }
        public object replyTo { get; set; }
        public string subject { get; set; }
        public DateTime received { get; set; }
        public object eMailTypeId { get; set; }
        public string bodyText { get; set; }
        public string bodyHtml { get; set; }
        public object unread { get; set; }
        public string important { get; set; }
        public object uid { get; set; }
        public int userId { get; set; }
        public object accountId { get; set; }
        public object isPublic { get; set; }
        public int folderId { get; set; }
        public object deleteAfterRead { get; set; }
    }

    public class Root
    {
        public bool success { get; set; }
        public string message { get; set; }
        public List<Datum> data { get; set; }
    }
}



