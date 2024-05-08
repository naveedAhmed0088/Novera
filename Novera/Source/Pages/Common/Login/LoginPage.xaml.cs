using Novera.Source.Pages.Common.ContactDetail;
using Novera.Source.Pages.Common.ForgotPassword;
using Novera.Source.Pages.Common.LanguageSelection;
using Novera.Source.Pages.Common.LoginOptionDialog;
using Novera.Source.Pages.Common.Register;
using Novera.Source.Pages.Crm.Email;
using System.Text.Json;
using Novera.Source.Utility;
using Novera.Source.ApiServices;


namespace Novera.Source.Pages.Common.Login;

public partial class LoginPage : ContentPage
{
    ApiService<LoginResponse> apiService;
    public LoginPage()
    {

        
        InitializeComponent();
       
     

        apiService = new ApiService<LoginResponse>();
       


    }
    
    private void OnLanguageClicked(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(LanguageSelectionPage));
    }
    private async void OnLoginClicked(object sender, EventArgs e)
    {

        //Shell.Current.GoToAsync($"//{nameof(EmailPage)}");

        string username = emailEntry.Text;
        string password = pwdEntry.Text;


        // Check if the email is empty or null
        if (string.IsNullOrWhiteSpace(username))
        {
           await DisplayAlert("Alert", "Please enter your email.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(password))
        {
            await DisplayAlert("Alert", "Please enter your password.", "OK");
        }
        else
        {
            loader.IsRunning = true;
            loader.IsVisible = true;
            var requestData = new { username, password };
            try
            {
                var response = await apiService.PostAsync(ApiUrls.loginEndpoint, JsonSerializer.Serialize(requestData), this);

                if (response is LoginResponse loginResponse)
                {
                    if (loginResponse.success == true)
                    {

                        //save data in async storage
                           await SecureStorage.Default.SetAsync("oauth_token", loginResponse.data.sessionToken);
                            await SecureStorage.Default.SetAsync("userid", loginResponse.data.userDetails.userID.ToString());
                            await SecureStorage.Default.SetAsync("user_email", loginResponse.data.userDetails.userEmail.ToString());

                            await Shell.Current.GoToAsync($"//{nameof(EmailPage)}");
                    }
                    else
                    { 
                    await DisplayAlert("Alert", loginResponse?.message?.ToString(), "ok");
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

    private void OnContactTapped(object sender, TappedEventArgs e)
    {

    }
}

