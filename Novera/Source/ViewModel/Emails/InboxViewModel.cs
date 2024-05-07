﻿using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using Novera.Source.ApiServices;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;

namespace Novera.Source.ViewModel.Emails
{
#pragma warning disable CS8602
#pragma warning disable CS8600
#pragma warning disable CS8604

    public partial class InboxViewModel:ObservableObject
    {
        [ObservableProperty]
        private bool _IsBusy;
        public ObservableCollection<Datum> InboxEmails { get; }
        EmailApiService apiService;
        public InboxViewModel()
        {
            // This default constructor is added to satisfy XAML requirements
            // You can leave it empty or initialize properties if needed
            InboxEmails = new ObservableCollection<Datum>();
            apiService = new EmailApiService();
            _ = LoadInboxEmailsAsync();

        }


        public async Task RefreshData()
        {
            // Clear existing emails and reload
            InboxEmails.Clear();
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


                // Retrieve OAuth token from SecureStorage


                string url = $"{ApiUrls.BaseUrl}Emails/GetEmails?Email={userEmail}&PageSize=10&PageNumber=0&EmailType=1";


                var response = await apiService.showEmails(url, oauthToken);

                if (response is InboxPageResponse successResponse)
                {
                    InboxEmails.Clear();
                    foreach (var email in successResponse.data.emails)
                    {
                        InboxEmails.Add(email);
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
                IsBusy=false;
            }

        }


    }






}

