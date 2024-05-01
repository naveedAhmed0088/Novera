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
using Novera.Source.Services;
using Novera.Source.Utility;
using Novera.Source.Response.CommpnPages.Success;
using Novera.Source.Response.CommpnPages.Failure;
using static System.Runtime.InteropServices.JavaScript.JSType;
using Novera.Resources.Strings;
using System.Globalization;
using Novera.Resources;


namespace Novera.Source.Pages.Common.Login;

public partial class LoginPage : ContentPage
{
    LoginApiService apiService;
    public LoginPage()
    {

        //Translator translator = Translator.Instance;

        // Change the language to French (France)
        //translator.CultureInfo = new CultureInfo("hi-in");

        InitializeComponent();
       
     

        apiService = new LoginApiService();
       


    }
    //private void Button_Clicked1(object sender, EventArgs e)
    //{
    //    language.Culture = new System.Globalization.CultureInfo("en-US");
    //    (App.Current as App).MainPage = new AppShell();
    //}
    //private void Button_Clicked(object sender, EventArgs e)
    //{
    //    language.Culture = new System.Globalization.CultureInfo("de-DE");
    //    (App.Current as App).MainPage = new AppShell();
    //}

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
            // Display an error message or handle the empty email case accordingly
            // For example:
            await DisplayAlert("Error", "Please enter your email.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(password))
        {
            await DisplayAlert("Error", "Please enter your password.", "OK");

        }
        else
        {
            loader.IsRunning = true;
            loader.IsVisible = true;
            var requestData = new { username, password };



            try
            {
                var response = await apiService.PostAsync(ApiUrls.LoginEndpoint, JsonSerializer.Serialize(requestData), this);

                if (response is LoginSuccessResponse successResponse)
                {
                    //save data in async
                    await SecureStorage.Default.SetAsync("oauth_token", successResponse.data.sessionToken);
                    await SecureStorage.Default.SetAsync("userid", successResponse.data.userDetails.userId.ToString());

                    await Shell.Current.GoToAsync($"//{nameof(EmailPage)}");



                }
                else if (response is LoginFailureResponse failureResponse)
                {
                    await DisplayAlert("Error", failureResponse.message.ToString(), "ok");

                }


            }
            catch (Exception ex)
            {
                // Handle exception
                Console.WriteLine($"Exception: {ex.Message}");
                await DisplayAlert("Error", ex.Message, "OK");

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

