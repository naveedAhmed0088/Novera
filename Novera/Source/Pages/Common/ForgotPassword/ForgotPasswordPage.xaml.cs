using Novera.Source.ApiServices;
using Novera.Source.Pages.Common.ContactDetail;
using Novera.Source.Response.CommpnPages;
using Novera.Source.Utility;
using System.Text.Json;

namespace Novera.Source.Pages.Common.ForgotPassword;

public partial class ForgotPasswordPage : ContentPage
{
    ApiService<ForgetPasswordResponse> apiService;
    public ForgotPasswordPage()
    {
        InitializeComponent();
        apiService = new ApiService<ForgetPasswordResponse>();
    }
    private async void OnResetClicked(object sender, EventArgs e)
    {

        string email = emailEntry.Text;
        string password = passwordEntry.Text;

        var requestData = new { email, password };

        string confirm = confirmEntry.Text;
        if (string.IsNullOrWhiteSpace(email))
        {
            await DisplayAlert("Alert", "Please enter your email.", "OK");
        }
        else if (string.IsNullOrWhiteSpace(password))
        {
            await DisplayAlert("Alert", "Please enter your password.", "OK");

        }
        else if (string.IsNullOrWhiteSpace(confirm))
        {
            await DisplayAlert("Alert", "Please Re-Type-Password.", "OK");

        }
        else if (password != confirm)
        {
            await  DisplayAlert("Alert", "Passwords do not match", "OK");
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
                    await DisplayAlert("Alert", successResponse.message, "ok");




                }

            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception: {ex.Message}");
                await DisplayAlert("Error", ex.Message, "OK");

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

    private async void OnContactTapped(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new ContactDetailPage());

        Navigation.RemovePage(this);
    }




}