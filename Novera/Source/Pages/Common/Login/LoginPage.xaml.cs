using Novera.Source.Pages.Common.ContactDetail;
using Novera.Source.Pages.Common.ForgotPassword;
using Novera.Source.Pages.Common.LanguageSelection;
using Novera.Source.Pages.Common.LoginOptionDialog;
using Novera.Source.Pages.Common.Register;
using Novera.Source.Pages.Crm.Settings.Team;
using Novera.Source.Pages.Crm.Calendar.ScheduleCalendar;
using Novera.Source.Pages.Crm.Dashboard;
using Novera.Source.Pages.Crm.Email;
using Novera.Source.Pages.Crm.SideDrawer;
using Novera.Source.Pages.Crm.Settings.Detail;
using Novera.Source.Model;
using System.Text.Json;
using System.Text;
using System.Net.Http.Headers;
using Org.Json;

namespace Novera.Source.Pages.Common.Login;

public partial class LoginPage : ContentPage
{
    private const string ApiUrl = "http://46.29.2.121/api/Account/Login";
    private HttpClient _client;
    public LoginPage()
    {
        InitializeComponent();
        _client = new HttpClient();
        


    }

    private void OnLanguageClicked(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(SettingsDetailPage));
    }
    private async void OnLoginClicked(object sender, EventArgs e)
    {

        //Shell.Current.GoToAsync($"//{nameof(EmailPage)}");

        string email = emailEntry.Text;
        string pwd = pwdEntry.Text;


        // Check if the email is empty or null
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
        else
        {
            loader.IsRunning = true;
            loader.IsVisible = true;
            var username = email;
            var password = pwd;

            var requestData = new { username, password };
            var content = new StringContent(JsonSerializer.Serialize(requestData), Encoding.UTF8, "application/json");

            try
            {
                var response = await _client.PostAsync(ApiUrl, content);

                if (response.IsSuccessStatusCode)
                {
                    string responseContent = await response.Content.ReadAsStringAsync();

                    // Parse the JSON response
                    var responseObject = JsonSerializer.Deserialize<JsonElement>(responseContent);
                    Console.WriteLine(responseContent);

                       
                        // Extract the session token and userId
                        if (responseObject.TryGetProperty("sessionToken", out var sessionTokenElement) &&
                            responseObject.TryGetProperty("userDetails", out var userDetailsElement) &&
                            userDetailsElement.TryGetProperty("userId", out var userIdElement))
                        {
                            string sessionToken = sessionTokenElement.GetString();
                            int userId = userIdElement.GetInt32();
                        await SecureStorage.Default.SetAsync("oauth_token", sessionToken);
                        await SecureStorage.Default.SetAsync("userid", userId.ToString());


                        Console.WriteLine(responseContent);
                        Shell.Current.GoToAsync($"//{nameof(EmailPage)}");
                       
                        }
                        else
                        {
                            // Session token or userId not found in the response

                        }


                        


                        // Check if userDetails exists in responseObject
                        


                        // Display the session token



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
                DisplayAlert("Error", ex.Message, "OK");

            }
            finally
            {
                // Hide loader
                loader.IsRunning = false;
                loader.IsVisible = false;
            }

        }
    }

    private void OnLoginWithClicked(object sender, EventArgs e)
    {
        var myDialog = new LoginOptionDialogPage();
        Navigation.PushModalAsync(myDialog);
    }


    private void OnSignupTapped(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(RegisterPage));


    }

    private void OnContactTapped(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(ContactDetailPage));
    }

    private void OnForgotPasswordTapped(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(ForgotPasswordPage));
    }


   

    }

