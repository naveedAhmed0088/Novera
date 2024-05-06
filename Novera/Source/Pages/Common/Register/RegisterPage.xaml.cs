using System.Text;
using System.Text.Json;
using Novera.Source.Pages.Common.ContactDetail;
using Novera.Source.Pages.Common.Login;
using Novera.Source.Pages.Common.LoginOptionDialog;

namespace Novera.Source.Pages.Common.Register;

public partial class RegisterPage : ContentPage
{
    private const string ApiUrl = "http://46.29.2.121/api/Account/register";
    private HttpClient _client;


    public RegisterPage()
    {
        InitializeComponent();
        _client = new HttpClient();

    }

    private async void OnRegisterClicked(object sender, EventArgs e)
    {
        //var myDialog = new LoginOptionDialogPage();
        //Navigation.PushModalAsync(myDialog);
        string email = emailEntry.Text;
        string pwd = pwdEntry.Text;
        string confirm = confirmEntry.Text;
        if (string.IsNullOrWhiteSpace(email))
        {
            // Display an error message or handle the empty email case accordingly
            // For example:
            DisplayAlert("Error", "Please enter your email.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(pwd))
        {
            DisplayAlert("Error", "Please enter your password.", "OK");

        }
        else if (string.IsNullOrWhiteSpace(confirm))
        {
            DisplayAlert("Error", "Please Re-Type-Password.", "OK");

        }
        else if (pwd != confirm)
        {
            // Show error message or handle mismatched passwords
            DisplayAlert("Error", "Passwords do not match", "OK");
        }
        else
        {
            loader.IsRunning = true;
            loader.IsVisible = true;
            var password = pwd;

            var requestData = new { email, password };
            var content = new StringContent(JsonSerializer.Serialize(requestData), Encoding.UTF8, "application/json");

            try
            {
                var response = await _client.PostAsync(ApiUrl, content);

                if (response.IsSuccessStatusCode)
                {
                    var responseContent = await response.Content.ReadAsStringAsync();
                    // Handle successful response, e.g., parsing JSON, updating UI
                    Console.WriteLine(responseContent);
                    await DisplayAlert("Success", "You have successfully registered", "OK");


                }
                else
                {
                    // Handle unsuccessful response
                    Console.WriteLine($"Failed with status code {response.StatusCode}");

                    // Print response content for further inspection
                    var errorResponseContent = await response.Content.ReadAsStringAsync();
                    Console.WriteLine($"Error response content: {errorResponseContent}");
                    try
                    {
                        var errorJson = JsonDocument.Parse(errorResponseContent).RootElement;
                        var errorCode = errorJson.GetProperty("error").GetProperty("code").GetInt32();
                        var errorMessage = errorJson.GetProperty("error").GetProperty("message").GetString();
                        Console.WriteLine($"Error code: {errorCode}, Error message: {errorMessage}");
                        DisplayAlert("Error", errorMessage, "OK");


                    }
                    catch (JsonException)
                    {
                        // Error parsing JSON response
                        Console.WriteLine("Error parsing JSON response.");
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
                loader.IsRunning = false;
                loader.IsVisible = false;
            }

        }

    }

    private void OnLoginTapped(object sender, EventArgs e)
    {
        Shell.Current.Navigation.PopAsync();
    }
    private void OnContactTapped(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(ContactDetailPage));
    }
}