
using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using Novera.Source.ApiServices;
using Novera.Source.Model.Emails;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;

namespace Novera.Source.ViewModel.Emails;
public  partial class SentMailViewModel : ObservableObject
{
    [ObservableProperty]
    private bool _IsBusy;

    public ObservableCollection<Datum> SentEmailList { get; }

    EmailApiService apiService;

#pragma warning disable CS8602
#pragma warning disable CS8600
#pragma warning disable CS8604

    public SentMailViewModel()
    {

        SentEmailList = new ObservableCollection<Datum>();
        apiService = new EmailApiService();
        _ = LoadInboxEmailsAsync();

    }


    public async Task RefreshData()
    {
        // Clear existing emails and reload
        SentEmailList.Clear();
        apiService = new EmailApiService();

        await LoadInboxEmailsAsync();
    }











    private async Task LoadInboxEmailsAsync()
    {

        try
        {
            IsBusy = true;
            string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
            var userEmail = await SecureStorage.Default.GetAsync("user_email");







            string url = $"{ApiUrls.BaseUrl}Emails/GetEmails?Email={userEmail}&PageSize=10&PageNumber=0&EmailType=3";



            var response = await apiService.showEmails(url, oauthToken);

            if (response is InboxPageResponse successResponse)
            {
                SentEmailList.Clear();
               
                foreach (var email in successResponse.data.emails)
                {
                    SentEmailList.Add(email);
                }

            }




        }
        catch (Exception ex)
        {
            // Handle exception
            Console.WriteLine($"Exception: {ex.Message}");
            //App.Current.MainPage.DisplayAlert("Error", ex.Message, "ok");


        }
        finally
        {
            // Hide loader
            IsBusy = false;

        }

    }






}
