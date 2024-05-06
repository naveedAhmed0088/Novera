﻿using Novera.Source.ApiServices;
using Novera.Source.Pages.Crm.Email.Compose;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;
using Novera.Source.ViewModel.Emails;
using System.Text.Json;

namespace Novera.Source.Pages.Crm.Email.Drafts;

public partial class DraftPage : ContentView
{
    private readonly HttpClient _client = new HttpClient();
    inboxPageApiService apiService;
    private readonly DraftViewModel _viewModel;

#pragma warning disable CS8602
#pragma warning disable CS8600

    public DraftPage()
	{
		InitializeComponent();
	}
    private void AddClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new ComposeEmailPage());
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
                    loader.IsRunning = true;
                    loader.IsVisible = true;

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


                    var response = await apiService.markEmail(url, JsonSerializer.Serialize(requestData), oauthToken);

                    if (response is InboxPageMarkResponse successResponse)
                    {
                        await App.Current.MainPage.DisplayAlert("Info", successResponse.message, "ok");

                        await _viewModel.RefreshData();


                    }




                }
                catch (Exception ex)
                {
                    // Handle exception
                    Console.WriteLine($"Exception: {ex.Message}");
                    await App.Current.MainPage.DisplayAlert("Error", ex.Message, "ok");


                }
                finally
                {
                    // Hide loader
                    loader.IsRunning = false;
                    loader.IsVisible = false;

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
                    loader.IsRunning = true;
                    loader.IsVisible = true;
                    // Retrieve OAuth token from SecureStorage
                    string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
                    if (string.IsNullOrEmpty(oauthToken))
                    {
                        Console.WriteLine("OAuth token not found.");
                        return;
                    }

                    string url = $"{ApiUrls.BaseUrl}Emails/{data.mailId}";
                    await App.Current.MainPage.DisplayAlert("Confirm Deletion", "Are you sure you want to delete this email?", "Yes", "No")
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
                    await App.Current.MainPage.DisplayAlert("Error", ex.Message, "ok");
                }
                finally
                {
                    loader.IsRunning = false;
                    loader.IsVisible = false;
                }
            }
        }
    }
}
