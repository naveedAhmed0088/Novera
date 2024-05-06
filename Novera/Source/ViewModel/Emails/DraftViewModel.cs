using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Novera.Source.ApiServices;
using Novera.Source.Model.Emails;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;

namespace Novera.Source.ViewModel.Emails
{
#pragma warning disable CS8602
#pragma warning disable CS8600
#pragma warning disable CS8604

    public class DraftViewModel
    {
        public ObservableCollection<Datum> DraftList { get; }
        EmailApiService apiService;

        public DraftViewModel()
        {

            DraftList = new ObservableCollection<Datum>();
            apiService = new EmailApiService();
            _ = LoadInboxEmailsAsync();

        }


        public async Task RefreshData()
        {
            // Clear existing emails and reload
            DraftList.Clear();
            apiService = new EmailApiService();

            await LoadInboxEmailsAsync();
        }











        private async Task LoadInboxEmailsAsync()
        {

            try
            {
                string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
                var userEmail = await SecureStorage.Default.GetAsync("user_email");





                // Retrieve OAuth token from SecureStorage


                string url = $"{ApiUrls.BaseUrl}Emails/GetEmails?Email={userEmail}&PageSize=10&PageNumber=0&EmailType=2";



                var response = await apiService.showEmails(url, oauthToken);

                if (response is InboxPageResponse successResponse)
                {
                    DraftList.Clear();
                    foreach (var email in successResponse.data.emails)
                    {
                        DraftList.Add(email);
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

}
