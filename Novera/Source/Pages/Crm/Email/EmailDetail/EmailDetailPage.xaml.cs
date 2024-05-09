

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

    [Obsolete]
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
                if (successResponse?.data?.documents != null) {
                    foreach (var obj in successResponse.data.documents)
                    {

                        var label = new Label
                        {
                            Text = obj.documentName,
                            WidthRequest = 100,
                            HeightRequest = 100,
                            TextColor = Color.FromRgb(255, 255, 255),
                            VerticalOptions = LayoutOptions.Center,
                            VerticalTextAlignment = TextAlignment.Center,
                            HorizontalTextAlignment = TextAlignment.Center,
                            Margin = new Thickness(10),


                        };
                        frameImage.BackgroundColor = Color.FromHex("#13294B");
                        frameImage.BorderColor = Color.FromHex("#D69E5A");
                        var frame = new Frame
                        {
                            BorderColor = Color.FromHex("#D69E5A"),
                            BackgroundColor = Color.FromHex("#13294B"),
                            CornerRadius = 5,
                            Padding = 5,
                            Content = label
                        };
                        imageStackLayout.Children.Add(label);
                    }
                }






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
    
