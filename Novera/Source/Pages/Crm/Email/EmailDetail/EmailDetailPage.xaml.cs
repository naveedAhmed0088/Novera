

using Novera.Source.ApiServices;
using Novera.Source.Response.EmailDetail;
using Novera.Source.Utility;

namespace Novera.Source.Pages.Crm.Email.EmailDetail;

public partial class EmailDetailPage : ContentPage
{
    ApiService<EmailDetailResponse> apiService;
    public EmailDetailPage()
    {
        InitializeComponent();
        apiService = new ApiService<EmailDetailResponse>();
        NavigationPage.SetHasNavigationBar(this, false);
        
        this.emailDetail.IsEnabled = false;
        getData();


    }



    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    private void DeleteBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }
    private void ArchiveBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    public async void getData() {
        try
        {
            string oauthToken = await SecureStorage.Default.GetAsync("oauth_token");
            string email_id = await SecureStorage.Default.GetAsync("email_id");
            string url = $"{ApiUrls.EmailDetail}{email_id}";

            var response = await apiService.getAsync(url,  this,oauthToken,HttpMethod.Get);

            if (response is EmailDetailResponse successResponse)
            {
                this.emailDetail.Text = $"Subject: {successResponse.data.emailDetails.subject}\nbody: {successResponse.data.emailDetails.body_Text}";




            }
            else
            {
                
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
            //loader.IsRunning = false;
            //loader.IsVisible = false;

        }
    }
}
    
