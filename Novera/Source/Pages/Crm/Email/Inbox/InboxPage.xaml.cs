﻿using System.Collections.ObjectModel;
using System.Text.Json;
using Novera.Source.ApiServices;
using Novera.Source.Model.Emails;
using Novera.Source.Pages.Crm.Email.Compose;
using Novera.Source.Pages.Crm.Email.EmailDetail;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;
using Novera.Source.ViewModel.Emails;

namespace Novera.Source.Pages.Crm.Email.Inbox;

public partial class InboxPage : ContentView
{

    public ObservableCollection<Datum> SelectedItems { get; set; } = new ObservableCollection<Datum>();
    EmailApiService apiService;
    private readonly InboxViewModel _viewModel;
    HashSet<string> addedMailIds;

    public InboxPage()
    {
        

        apiService = new EmailApiService();
        InitializeComponent();
        Resources.Add("FirstCharacterConverter", new FirstCharacterConverter());
        _viewModel = new InboxViewModel();
        BindingContext = _viewModel;
        addedMailIds = new HashSet<string>();

    }


    private void AddClicked(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(ComposeEmailPage));
    }


    private async void StarButtonClicked(object sender, EventArgs e)
    {

        if (sender is ImageButton button)
        {
     
            if (button.BindingContext is Datum data)
            {
                try
                {
                    loader.IsRunning = true;
                    loader.IsVisible = true;

                    string importantValue = (data.important == "Y") ? "N" : "Y";
                    var requestData = new { important = importantValue };


                    #pragma warning disable CS8600
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
                        loader.IsRunning = false;
                        loader.IsVisible = false;
                       
                        #pragma warning disable CS8602
                        await App.Current.MainPage.DisplayAlert("Info", successResponse.message, "ok");

                        await _viewModel.RefreshData();


                    }




                }
                catch (Exception ex)
                {
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

    private async void deleteButtonClicked(object sender, EventArgs e)
    {
        if (sender is ImageButton button)
        {
           
            if (button.BindingContext is Datum data)
            {
                try
                {
                    loader.IsRunning = true;
                    loader.IsVisible = true;
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
                                    loader.IsRunning = false;
                                    loader.IsVisible = false;
                                    await _viewModel.RefreshData();
                                }

                            }
                        });

                }
                catch (Exception ex)
                {
                 
                    Console.WriteLine($"Exception: {ex.Message}");
                    await App.Current.MainPage.DisplayAlert("Error", ex.Message, "ok");
                }
                finally {
                    loader.IsRunning = false;
                    loader.IsVisible = false;
                }
            }
        }
    }

    private void OnCollectionViewSelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        var previous = e.PreviousSelection;
        var current = e.CurrentSelection;
    }

    private async void EmailItemTapped(object sender, TappedEventArgs e)
    {
        var frame = (Frame)sender;
        var emailItem = (Datum)frame.BindingContext;
        string email_id = emailItem.mailId.ToString();
        await SecureStorage.Default.SetAsync("email_id", email_id);
        await Navigation.PushAsync(new EmailDetailPage());

    }

    private  void MultiSelectionTap(object sender, TappedEventArgs e)
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
                       
                        addedMailIds.Clear();
                        Search.IsVisible = true;
                        emailsCount.IsVisible = false;
                        loader.IsRunning = false;
                        loader.IsVisible = false;
                        image.Source = "email_search";

                        await Navigation.PushAsync(new EmailPage());

                    }
                }
                catch (Exception ex)
                {
                 
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
        
    }

    private async void SearchClicked(object sender, EventArgs e)
    {
        string searchText = Search.Text;
      


        await _viewModel.RefreshData(searchText);
    }
}

