using System.Net.Http.Headers;
using System.Text.Json;
using System.Windows.Input;
using Microsoft.Maui.ApplicationModel.Communication;
using Novera.Source.ApiServices;
using Novera.Source.Model.Emails;
using Novera.Source.Pages.Crm.Email.Compose;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;
using Novera.Source.ViewModel.Emails;

namespace Novera.Source.Pages.Crm.Email.Inbox;

public partial class InboxPage : ContentView

{

    private readonly HttpClient _client = new HttpClient();
    inboxPageApiService apiService;
    private readonly InboxViewModel _viewModel;
    public InboxPage()
	{

        apiService = new inboxPageApiService();
        InitializeComponent();
        _viewModel = new InboxViewModel();
        BindingContext = _viewModel;

    }
   
    


private void AddClicked(object sender, EventArgs e)
	{
		Shell.Current.GoToAsync(nameof(ComposeEmailPage));
	}

    
    private async void StarButtonClicked(object sender, EventArgs e)
    {
       
        if (sender is ImageButton button)
        {
            // Retrieve the name from the BindingContext of the ImageButton
            if (button.BindingContext is Datum data)
            {
                try
                {
                  
                    string importantValue = (data.important == "Y") ? "N" : "Y";
                    var requestData = new { important = importantValue };

                    
                    // Retrieve OAuth token from SecureStorage
                    string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
                    if (string.IsNullOrEmpty(oauthToken))
                    {
                        Console.WriteLine("OAuth token not found.");
                        return;
                    }

                    string url = $"{ApiUrls.BaseUrl}Emails/{data.mailId}/important";

                    
                    var response = await apiService.markEmail(url, JsonSerializer.Serialize(requestData),oauthToken);

                    if (response is InboxPageMarkResponse successResponse)
                    {
                        App.Current.MainPage.DisplayAlert("Info",successResponse.message,"ok");

                        await _viewModel.RefreshData();


                    }




                }
                catch (Exception ex)
                {
                    // Handle exception
                    Console.WriteLine($"Exception: {ex.Message}");
                    App.Current.MainPage.DisplayAlert("Error", ex.Message, "ok");


                }
                finally
                {
                    // Hide loader
                    //loader.IsRunning = false;
                    //loader.IsVisible = false;

                }



            }
        }
    }

    private async void deleteButtonClicked(object sender, EventArgs e)
    {
        if (sender is ImageButton button)
        {
            // Retrieve the name from the BindingContext of the ImageButton
            if (button.BindingContext is Datum data)
            {
                try
                {
                    // Retrieve OAuth token from SecureStorage
                    string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
                    if (string.IsNullOrEmpty(oauthToken))
                    {
                        Console.WriteLine("OAuth token not found.");
                        return;
                    }

                    string url = $"{ApiUrls.BaseUrl}Emails/{data.mailId}";
                    App.Current.MainPage.DisplayAlert("Confirm Deletion", "Are you sure you want to delete this email?", "Yes", "No")
                        .ContinueWith(async (result) =>
                        {
                            if (result.Result)
                            {
                                var response = await apiService.deleteEmail(url, oauthToken);

                                if (response is InboxPageMarkResponse successResponse)
                                {
                                    await _viewModel.RefreshData();
                                }
                                
                            }
                        });

                }
                catch (Exception ex)
                {
                    // Handle exception
                    Console.WriteLine($"Exception: {ex.Message}");
                    App.Current.MainPage.DisplayAlert("Error", ex.Message, "ok");
                }
            }
        }
    }
}

