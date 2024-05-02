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
    public class DraftViewModel
    {
        public ObservableCollection<Datum> DraftList { get; }
        inboxPageApiService apiService;

        public DraftViewModel()
        {

            DraftList = new ObservableCollection<Datum>();
            apiService = new inboxPageApiService();
            //LoadInboxEmailsAsync();

        }


        public async Task RefreshData()
        {
            // Clear existing emails and reload
            DraftList.Clear();
            apiService = new inboxPageApiService();

            await LoadInboxEmailsAsync();
        }











        private async Task LoadInboxEmailsAsync()
        {

            try
            {
                string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
                int id = int.Parse(await SecureStorage.Default.GetAsync("userid"));




                // Retrieve OAuth token from SecureStorage


                int emailtype = (int)EmailType.Drafts;
                string url = $"{ApiUrls.BaseUrl}Emails?UserId={id}&EmailType={emailtype}";



                var response = await apiService.showEmails(url, oauthToken);

                if (response is InboxPageResponse successResponse)
                {
                    DraftList.Clear();
                    foreach (var email in successResponse.data)
                    {
                        DraftList.Add(email);
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

}
