using System.Net.Http.Headers;
using Novera.Source.Pages.Crm.Email.Compose;

namespace Novera.Source.Pages.Crm.Email.Inbox;

public partial class InboxPage : ContentView

{

    private readonly HttpClient _client = new HttpClient();
    public InboxPage()
	{

        InitializeComponent();
        CallApi(_client);
        
    }
    private async void CallApi(HttpClient client)
    {
        try
        {
            // Retrieve user ID from SecureStorage
            string userIdString = await SecureStorage.Default.GetAsync("userid");
            if (string.IsNullOrEmpty(userIdString))
            {
                Console.WriteLine("User ID not found or invalid.");
                return;
            }

            int userId = int.Parse(userIdString);

            // Retrieve OAuth token from SecureStorage
            string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
            if (string.IsNullOrEmpty(oauthToken))
            {
                Console.WriteLine("OAuth token not found.");
                return;
            }

            var request = new HttpRequestMessage(HttpMethod.Get, $"http://46.29.2.121/api/Emails?UserId={userId}");
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", oauthToken);

            var response = await client.SendAsync(request);
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();
            Console.WriteLine(content);
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
        }
    }



private void AddClicked(object sender, EventArgs e)
	{
		Shell.Current.GoToAsync(nameof(ComposeEmailPage));
	}

    
}
