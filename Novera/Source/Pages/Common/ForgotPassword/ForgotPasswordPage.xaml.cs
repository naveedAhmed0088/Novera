using Novera.Source.Pages.Common.ContactDetail;
using Novera.Source.Pages.Common.Login;
using Novera.Source.Response.CommpnPages;
using Novera.Source.Services;
using Novera.Source.Utility;
using System.Text;
using System.Text.Json;

namespace Novera.Source.Pages.Common.ForgotPassword;

public partial class ForgotPasswordPage : ContentPage
{
    ForgetPasswordApiService<ForgetPasswordResponse> apiService;
    public ForgotPasswordPage()
    {
        InitializeComponent();
        apiService = new ForgetPasswordApiService<ForgetPasswordResponse>();
    }
    private async void OnResetClicked(object sender, EventArgs e)
    {

        string email = emailEntry.Text;
        string password = passwordEntry.Text;

        var requestData = new { email, password };

        string confirm = confirmEntry.Text;
        if (string.IsNullOrWhiteSpace(email))
        {
            // Display an error message or handle the empty email case accordingly
            // For example:
            DisplayAlert("Error", "Please enter your email.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(password))
        {
            DisplayAlert("Error", "Please enter your password.", "OK");

        }
        else if (string.IsNullOrWhiteSpace(confirm))
        {
            DisplayAlert("Error", "Please Re-Type-Password.", "OK");

        }
        else if (password != confirm)
        {
            // Show error message or handle mismatched passwords
            DisplayAlert("Error", "Passwords do not match", "OK");
        }



        else
        {
            loader.IsRunning = true;
            loader.IsVisible = true;



            try
            {

                var response = await apiService.PostAsync(ApiUrls.forgetPasswordEndPoint, JsonSerializer.Serialize(requestData), this);

                if (response is ForgetPasswordResponse successResponse)
                {
                    DisplayAlert("Success", successResponse.message, "ok");




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

    private void OnLoginTapped(object sender, EventArgs e)
    {
        Shell.Current.Navigation.PopAsync();
    }

    private async void OnContactTapped(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(ContactDetailPage));
    }


}