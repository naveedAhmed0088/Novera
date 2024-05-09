
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
#pragma warning disable CS8601
#pragma warning disable CS8622
#pragma warning disable CS0809
    private List<string> pickedFiles;
    private bool changesMade;
    public ComposeEmailPage()
    {
        InitializeComponent();
        BindingContext = new ComposeEmailViewModel();
        apiService = new EmailApiService();
        filePickerService = new FilePickerService();
        NavigationPage.SetHasNavigationBar(this, false);

        // Attach event handlers for text changed events

        FromEntry.TextChanged += TextChanged;
        SubjectEntry.TextChanged += TextChanged;
        bodyEditor.TextChanged += TextChanged;

        // Initialize pickedFiles with an empty list to avoid null reference warnings
        pickedFiles = new List<string>();
    }
    [Obsolete]
    // This method is called when the back button is pressed
    protected override bool OnBackButtonPressed()
    {
        // Check if changes are made
        if (changesMade)
        {
            // Display an alert asking the user if they want to save changes as draft or cancel
            _ = Device.InvokeOnMainThreadAsync(async () =>
            {
                var result = await DisplayAlert("Draft Changes", "Do you want to save changes as draft?", "Draft", "Cancel");
                if (result)
                {
                    // User chose to save changes as draft
                    await SaveAsDraft();
                }
                else
                {
                    // User chose to cancel, navigate back
                    await Navigation.PopAsync();
                }
            });

            return true; // Do not execute default back button behavior
        }
        else
        {
            return base.OnBackButtonPressed(); // Execute default back button behavior
        }
    }
    private async Task SaveAsDraft()
    {
        string oauthToken = (await SecureStorage.Default.GetAsync("oauth_token"))?.ToString() ?? string.Empty;
        int id;
        if (!int.TryParse(await SecureStorage.Default.GetAsync("userid"), out id))
        {
            id = 0; // or any other default value
        }

        string from = FromEntry.Text;
        string sbj = SubjectEntry.Text;
        var selectedItems = comboBox.SelectedItems;
        string body = bodyEditor.Text;

        if (string.IsNullOrWhiteSpace(from))
        {
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
            bool allEmailsDraftedSuccessfully = true;

            foreach (City selectedItem in selectedItems)
            {
                string cityName = selectedItem.Name;
                try
                {
                    bool emailDraftedSuccessfully = await SendEmail(oauthToken, cityName, from, sbj, body, id, true);

                    if (!emailDraftedSuccessfully)
                    {
                        allEmailsDraftedSuccessfully = false;
                        break;
                    }
                }
                catch (Exception ex)
                {
                    allEmailsDraftedSuccessfully = false;
                    Console.WriteLine(ex.Message);
                }
            }

            if (allEmailsDraftedSuccessfully)
            {
                loader.IsRunning = false;
                loader.IsVisible = false;
                await Navigation.PushAsync(new EmailPage());
            }
            else
            {
                await DisplayAlert("Error", "Some emails failed to save as draft.", "OK");
                Console.WriteLine("Some emails failed to save as draft. Navigation aborted.");
                loader.IsRunning = false;
                loader.IsVisible = false;
            }
        }
    }

    // Event handler for text changed event in any entry or editor
    private void TextChanged(object sender, EventArgs e)
    {
        changesMade = true; // Set changesMade flag to true
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
        string oauthToken = (await SecureStorage.Default.GetAsync("oauth_token"))?.ToString() ?? string.Empty;
        int id;
        if (!int.TryParse(await SecureStorage.Default.GetAsync("userid"), out id))
        {
            id = 0;
        }

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
                    bool emailSentSuccessfully = await SendEmail(oauthToken, cityName, from, sbj, body, id, false);

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

    private async Task<bool> SendEmail(string token, string sendTo, string cc, string subject, string body, int userId, bool isDraft)
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
            content.Add(new StringContent(isDraft.ToString()), "IsDraft");

            if (pickedFiles != null)
            {
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
            }
            var response = await apiService.composeEmail(ApiUrls.ComposeEmail, this, token, HttpMethod.Post, content);

            if (response is ComposeEmailResponse successResponse)
            {

                if (successResponse.success == true)
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
    [Obsolete]
    private async void AddFile(object sender, EventArgs e)
    {


        // Define the PickOptions
        var options = new PickOptions
        {
            PickerTitle = "Please select a file"
        };
        filePickerService = new FilePickerService();
        imageStackLayout.Children.Clear();

        pickedFiles = await filePickerService.PickAndShowMultiple(options);

        if (pickedFiles != null)
        {
            foreach (var fileName in pickedFiles)
            {
                var label = new Label
                {
                    Text = fileName,
                    TextColor = Color.FromRgb(255, 255, 255),
                    VerticalOptions = LayoutOptions.Center,
                    VerticalTextAlignment = TextAlignment.Center,
                    HorizontalTextAlignment = TextAlignment.Center,
                    Margin = new Thickness(0),



                };
                var frame = new Frame
                {
                    BorderColor = Color.FromHex("#D69E5A"),
                    BackgroundColor = Color.FromHex("#13294B"),
                    CornerRadius = 5,
                    Padding = 5,
                    Content = label,
                    WidthRequest = 100,
                    HeightRequest = 100,
                    Margin = 5,


                };
                imageStackLayout.Children.Add(frame);
            }
        }
    }
}

