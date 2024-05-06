
using System.Collections.ObjectModel;
using Novera.Source.ApiServices;
using Novera.Source.Model.Emails;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;

namespace Novera.Source.ViewModel.Emails;
public class SentMailViewModel
{
    public ObservableCollection<Datum> SentEmailList { get; }

    inboxPageApiService apiService;

#pragma warning disable CS8602
#pragma warning disable CS8600
#pragma warning disable CS8604

    public SentMailViewModel()
    {
        SentEmailList = new ObservableCollection<Datum>();
        apiService = new inboxPageApiService();
        _ = LoadInboxEmailsAsync();

    }


    public async Task RefreshData()
    {
        // Clear existing emails and reload
        SentEmailList.Clear();
        apiService = new inboxPageApiService();

        await LoadInboxEmailsAsync();
    }











    private async Task LoadInboxEmailsAsync()
    {

        try
        {
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
            //loader.IsRunning = false;
            //loader.IsVisible = false;

        }

    }






}
