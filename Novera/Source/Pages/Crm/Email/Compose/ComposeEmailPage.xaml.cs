
using System.Collections.ObjectModel;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using Novera.Source.ApiServices;
using Novera.Source.Pages.Crm.Email.EmailDetail;
using Novera.Source.Response;
using Novera.Source.Utility;
using Novera.Source.ViewModel.Emails;
using Telerik.Maui.Controls;
using static Novera.Source.ViewModel.Emails.ComposeEmailViewModel;

namespace Novera.Source.Pages.Crm.Email.Compose;

public partial class ComposeEmailPage : ContentPage
{
    ApiService<ComposeEmailResponse> apiService;

    public ComposeEmailPage()
    {
        InitializeComponent();
        BindingContext = new ComposeEmailViewModel();
        apiService = new ApiService<ComposeEmailResponse>();

        NavigationPage.SetHasNavigationBar(this, false);

        
    }

    private void RemoveToEmailTapped(object sender, System.EventArgs e)
    {
        var closeLabel = sender as Image;
        if (closeLabel != null)
        {
            var item = closeLabel.BindingContext as City;
            if (item != null)
            {
                this.comboBox.SelectedItems.Remove(item);
            }
        }
    }

    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }
    private void EditBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();

    }

    private async void DetailBtnClicked(object sender, EventArgs e)
    {
        string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
        int id = int.Parse(await SecureStorage.Default.GetAsync("userid"));
        




        string from = FromEntry.Text;
        string sbj = SubjectEntry.Text;
        var selectedItems = comboBox.SelectedItems;
        string body = bodyEditor.Text;

        if (string.IsNullOrWhiteSpace(from))
        {
            // Display an error message or handle the empty email case accordingly
            // For example:
            DisplayAlert("Error", "Please enter your email.", "OK");
        }
        else if (selectedItems.Count <= 0)
        {
            DisplayAlert("Error", "Please select at least one email.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(sbj))
        {
            DisplayAlert("Error", "Please enter subject.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(body))
        {
            DisplayAlert("Error", "Please enter body.", "OK");
        }
        else
        {
            bool allEmailsSentSuccessfully = true;

            foreach (City selectedItem in selectedItems)
            {
                string cityName = selectedItem.Name;
                try
                {
                    await SendEmail(oauthToken, cityName, from, sbj, body, id);
                }
                catch (Exception ex)
                {
                    allEmailsSentSuccessfully = false; // Update flag to indicate failure
                }
            }

            if (allEmailsSentSuccessfully)
            {
                // All emails sent successfully, navigate to another screen
                await Navigation.PushAsync(new EmailPage());
            }
            else
            {
                DisplayAlert("Error", "Some emails failed to send.", "ok");
                Console.WriteLine("Some emails failed to send. Navigation aborted.");
            }
        }
    }

    private async Task SendEmail(string token, string sendTo, string cc, string subject, string body, int userId)
    {

        try
        {
            var jsonBody = new
            {
                sendTo,
                cc,
                bcc = "", // Assuming bcc is not provided as a parameter
                subject,
                bodyText = body,
                bodyHtml = "", // Assuming bodyHtml is not provided as a parameter
                userId,
                folderId = 0 // Assuming folderId is not provided as a parameter
            };

            var response = await apiService.getAsync(ApiUrls.ComposeEmail, this,token,HttpMethod.Post,JsonSerializer.Serialize(jsonBody));

            if (response is ComposeEmailResponse successResponse)
            {
               
                if(successResponse.success==true)
                {

                }
                else
                {

                }


            }
            






        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
            DisplayAlert("Error", ex.Message, "ok");
        }
    }




}

