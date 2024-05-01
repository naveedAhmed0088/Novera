using System.Collections.ObjectModel;
using Novera.Source.ApiServices;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;

namespace Novera.Source.ViewModel.Emails
{
    public class InboxViewModel
    {
        public ObservableCollection<Datum> InboxEmails { get; }
        inboxPageApiService apiService;
        public InboxViewModel()
        {
            // This default constructor is added to satisfy XAML requirements
            // You can leave it empty or initialize properties if needed
            InboxEmails = new ObservableCollection<Datum>();
            apiService = new inboxPageApiService();
            LoadInboxEmailsAsync();

        }


        public async Task RefreshData()
        {
            // Clear existing emails and reload
            InboxEmails.Clear();
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

                int emailtype = (int)EmailType.Inbox;
                string url = $"{ApiUrls.BaseUrl}Emails?UserId={id}&EmailType={emailtype}";


                var response = await apiService.showEmails(url, oauthToken);

                if (response is InboxPageResponse successResponse)
                {
                    InboxEmails.Clear();
                    foreach (var email in successResponse.data)
                    {
                        InboxEmails.Add(email);
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

