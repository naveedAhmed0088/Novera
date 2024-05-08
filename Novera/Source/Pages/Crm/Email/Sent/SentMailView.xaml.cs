using Novera.Source.ApiServices;
using Novera.Source.Pages.Crm.Email.Compose;
using Novera.Source.Pages.Crm.Email.EmailDetail;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;
using Novera.Source.ViewModel.Emails;
using System.Text.Json;

namespace Novera.Source.Pages.Crm.Email.Sent;

public partial class SentMailView : ContentView
{
    EmailApiService apiService;
    private readonly SentMailViewModel _viewModel;
    HashSet<string> addedMailIds;
#pragma warning disable CS8602
#pragma warning disable CS8600

    public SentMailView()
	{
        apiService = new EmailApiService();
        InitializeComponent();
        Resources.Add("FirstCharacterConverter", new FirstCharacterConverter());
        addedMailIds = new HashSet<string>();
        _viewModel = new SentMailViewModel();
        BindingContext = _viewModel;


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
    private async void EmailItemTapped(object sender, TappedEventArgs e)
    {
        var frame = (Frame)sender;
        var emailItem = (Datum)frame.BindingContext;
        string email_id = emailItem.mailId.ToString();
        await SecureStorage.Default.SetAsync("email_id", email_id);
        await Navigation.PushAsync(new EmailDetailPage());

    }



    private void MultiSelectionTap(object sender, TappedEventArgs e)
    {
        var frame = (Frame)sender;
        var item = (Datum)frame.BindingContext;

        String mailId = item.mailId.ToString();
        if (addedMailIds.Contains(mailId))
        {
            addedMailIds.Remove(mailId);

            var label = (Label)frame.Content;
            label.Text = item.sender.Substring(0, 1);
        }
        else
        {
            addedMailIds.Add(mailId);
            var label = (Label)frame.Content;
            label.Text = "\u221A";
        }
        if (addedMailIds.Count > 0)
        {
            Search.IsVisible = false;
            emailsCount.IsVisible = true;
            emailsCount.Text = addedMailIds.Count.ToString();
            image.Source = "document_delete_folder";
        }
        else
        {
            Search.IsVisible = true;
            emailsCount.IsVisible = false;

            image.Source = "email_search";
        }

    }

    private async void image_search_clicked(object sender, TappedEventArgs e)
    {
        if (addedMailIds.Count > 0)
        {
            bool confirmDelete = await App.Current.MainPage.DisplayAlert("Confirm Deletion", "Are you sure you want to delete these emails?", "Yes", "No");

            if (confirmDelete)
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

                    string csvMailIds = string.Join("%2C", addedMailIds);
                    string url = $"{ApiUrls.BaseUrl}Emails/{csvMailIds}";

                    var response = await apiService.deleteEmail(url, oauthToken);

                    if (response is InboxPageMarkResponse successResponse)
                    {
                        await App.Current.MainPage.DisplayAlert("Info", successResponse.message, "OK");

                        addedMailIds.Clear();
                        Search.IsVisible = true;
                        emailsCount.IsVisible = false;
                        loader.IsRunning = false;
                        loader.IsVisible = false;
                        image.Source = "email_search";

                        await _viewModel.RefreshData();
                    }
                }
                catch (Exception ex)
                {
                    // Handle exception
                    Console.WriteLine($"Exception: {ex.Message}");
                    await App.Current.MainPage.DisplayAlert("Error", ex.Message, "OK");
                }
                finally
                {
                    loader.IsRunning = false;
                    loader.IsVisible = false;
                }
            }
        }
        else
        {
            // No emails selected, handle accordingly
        }
    }
}