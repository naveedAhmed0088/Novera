
using System.Net.Http.Headers;
using System.Text.Json;
using Novera.Source.ApiServices;
using Novera.Source.Response;
using Novera.Source.Utility;
using Novera.Source.ViewModel.Emails;
using static Novera.Source.ViewModel.Emails.ComposeEmailViewModel;

namespace Novera.Source.Pages.Crm.Email.Compose;

public partial class ComposeEmailPage : ContentPage
{
    EmailApiService apiService;
    FilePickerService filePickerService;
#pragma warning disable CS8602
#pragma warning disable CS8600
#pragma warning disable CS8604
#pragma warning disable CS8601

    private List<string> pickedFiles;
    public ComposeEmailPage()
    {
        InitializeComponent();
        BindingContext = new ComposeEmailViewModel();
        apiService = new EmailApiService();
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
            await DisplayAlert("Error", "Please enter your email.", "OK");
        }
        else if (selectedItems.Count <= 0)
        {
            await DisplayAlert("Error", "Please select at least one email.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(sbj))
        {
            await DisplayAlert("Error", "Please enter subject.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(body))
        {
            await DisplayAlert("Error", "Please enter body.", "OK");
        }
        else
        {
            loader.IsRunning = true;
            loader.IsVisible = true;
            bool allEmailsSentSuccessfully = true;

            foreach (City selectedItem in selectedItems)
            {
                string cityName = selectedItem.Name;
                try
                {
                    // Use the SendEmail method and check its return value
                    bool emailSentSuccessfully = await SendEmail(oauthToken, cityName, from, sbj, body, id);

                    if (!emailSentSuccessfully)
                    {
                        allEmailsSentSuccessfully = false; // Update flag to indicate failure
                        break;
                    }
                }
                catch (Exception ex)
                {
                    allEmailsSentSuccessfully = false; // Update flag to indicate failure
                    Console.WriteLine(ex.Message);
                }
            }

            if (allEmailsSentSuccessfully)
            {
                loader.IsRunning = false;
                loader.IsVisible = false;
                await Navigation.PushAsync(new EmailPage());
            }
            else
            {
                await DisplayAlert("Error", "Some emails failed to send.", "OK");
                Console.WriteLine("Some emails failed to send. Navigation aborted.");
                loader.IsRunning = false;
                loader.IsVisible = false;
            }
        }
    }

    private async Task<bool> SendEmail(string token, string sendTo, string cc, string subject, string body, int userId)
    {

        bool allEmailsSentSuccessfully = true;
        try
        {
      


            var content = new MultipartFormDataContent();
            content.Add(new StringContent(sendTo), "SendTo");
            content.Add(new StringContent(cc), "Cc");
            content.Add(new StringContent(""), "Bcc");
            content.Add(new StringContent(subject), "Subject");
            content.Add(new StringContent(body), "BodyText");
            content.Add(new StringContent(body), "BodyHtml");
            content.Add(new StringContent(userId.ToString()), "UserId");
            content.Add(new StringContent("0"), "FolderId");
            

            foreach (var filePath in pickedFiles)
            {

                var fileName = Path.GetFileName(filePath);
                 var fileExtension = Path.GetExtension(filePath);
                fileExtension = fileExtension.TrimStart('.');

                var fileStreamContent = new StreamContent(File.OpenRead(filePath));
                fileStreamContent.Headers.ContentType = new MediaTypeHeaderValue($"image/{fileExtension}");

                //Add the file
                content.Add(fileStreamContent, name: "files", fileName: fileName);


            }





            var response = await apiService.composeEmail(ApiUrls.ComposeEmail, this,token,HttpMethod.Post,content);

            if (response is ComposeEmailResponse successResponse)
            {
               
                if(successResponse.success==true)
                {
                   allEmailsSentSuccessfully = true;

                }
                else
                {
                    allEmailsSentSuccessfully = false;

                }


            }
            






        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
            await DisplayAlert("Error", ex.Message, "ok");
            allEmailsSentSuccessfully = false;

        }
        return allEmailsSentSuccessfully;
    }

    private async void AddFile(object sender, EventArgs e)
    {
       

// Define the PickOptions
var options = new PickOptions
{
    PickerTitle = "Please select a file"
};
        filePickerService = new FilePickerService();
        imageStackLayout.Children.Clear();

        // Call the PickAndShow method asynchronously
        pickedFiles = await filePickerService.PickAndShowMultiple(options);

        foreach (var filePath in pickedFiles)
        {

            var image = new Image
            {
                Source = filePath,
                WidthRequest = 100,
                HeightRequest = 100,
                Margin = new Thickness(-10)
            };
            frameImage.BackgroundColor = Color.FromHex("#13294B");
            frameImage.BorderColor=Color.FromHex("#D69E5A");

            imageStackLayout.Children.Add(image);
        }
    }
}

