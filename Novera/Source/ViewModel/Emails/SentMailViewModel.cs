
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

    public SentMailViewModel()
    {
        SentEmailList = new ObservableCollection<Datum>();
        apiService = new inboxPageApiService();
        LoadInboxEmailsAsync();

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
            int id = int.Parse(await SecureStorage.Default.GetAsync("userid"));




            

            string url = $"{ApiUrls.BaseUrl}Emails?UserId={id}";


            var response = await apiService.showEmails(url, oauthToken);

            if (response is InboxPageResponse successResponse)
            {
                SentEmailList.Clear();
               
                foreach (var email in successResponse.data)
                {
                    SentEmailList.Add(email);
                }

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
