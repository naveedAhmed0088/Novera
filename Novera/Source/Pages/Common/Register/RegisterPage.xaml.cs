using System.Text.Json;
using Novera.Source.ApiServices;
using Novera.Source.Pages.Common.LanguageSelection;
using Novera.Source.Pages.Common.LoginOptionDialog;
using Novera.Source.Response.CommpnPages;
using Novera.Source.Utility;
namespace Novera.Source.Pages.Common.Register;

public partial class RegisterPage : ContentPage
{
    ApiService<RegisterResponse> apiService;

    public RegisterPage()
    {
        apiService = new ApiService<RegisterResponse>();
        InitializeComponent();
        
    }

    private async void OnRegisterClicked(object sender, EventArgs e)
    {
        string email = emailEntry.Text;
        string pwd = pwdEntry.Text;
        string confirm = confirmEntry.Text;
        if (string.IsNullOrWhiteSpace(email))
        {
            await DisplayAlert("Alert", "Please enter your email.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(pwd))
        {
            await DisplayAlert("Alert", "Please enter your password.", "OK");

        }
        else if (string.IsNullOrWhiteSpace(confirm))
        {
           await  DisplayAlert("Alert", "Please Re-Type-Password.", "OK");

        }
        else if (pwd != confirm)
        {
            await DisplayAlert("Alert", "Passwords do not match", "OK");
        }
        else
        {
            loader.IsRunning = true;
            loader.IsVisible = true;
            var password = pwd;
            var requestData = new { email, password };
          
            try
            {

                var response = await apiService.PostAsync(ApiUrls.registerEndpoint, JsonSerializer.Serialize(requestData), this);

                if (response is RegisterResponse registerResponse) {

                    await DisplayAlert("Alert", registerResponse.message, "OK");
                   
                }


            }
            catch (Exception ex)
            {
             
                Console.WriteLine($"Exception: {ex.Message}");
            }
            finally
            {
            
                loader.IsRunning = false;
                loader.IsVisible = false;
            }

        }

    }

    private void OnLoginTapped(object sender, EventArgs e)
    {
        Shell.Current.Navigation.PopAsync();
    }

    private void OnLanguageClicked(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(LanguageSelectionPage));
    }

    private void OnLoginWithClicked(object sender, EventArgs e)
    {
        var myDialog = new LoginOptionDialogPage();
        Navigation.PushModalAsync(myDialog);
    }
}