﻿using System.Collections.ObjectModel;
using Novera.Source.ApiServices;
using Novera.Source.Model.Emails;
using Novera.Source.Pages.Crm.Email;
using Novera.Source.Response.CRMPages;
using Novera.Source.Utility;

namespace Novera.Source.ViewModel.Emails;

public class TrashViewModel
{
#pragma warning disable CS8602
#pragma warning disable CS8600
#pragma warning disable CS8604

    public ObservableCollection<Datum> TrashMailList { get; }
    EmailApiService apiService;

    public TrashViewModel()
    {

        TrashMailList = new ObservableCollection<Datum>();
        apiService = new EmailApiService();
        _ = LoadInboxEmailsAsync();

    }


    public async Task RefreshData()
    {
        // Clear existing emails and reload
        TrashMailList.Clear();
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


            string url = $"{ApiUrls.BaseUrl}Emails/GetEmails?Email={userEmail}&PageSize=10&PageNumber=0&EmailType=4";



            var response = await apiService.showEmails(url, oauthToken);

            if (response is InboxPageResponse successResponse)
            {
                TrashMailList.Clear();
                foreach (var email in successResponse.data.emails)
                {
                    TrashMailList.Add(email);
                }

            }




        }
        catch (Exception ex)
        {
            // Handle exception
            Console.WriteLine($"Exception: {ex.Message}");
           

        }
        finally
        {
            // Hide loader
            //loader.IsRunning = false;
            //loader.IsVisible = false;

        }

    }


}

