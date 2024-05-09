

using Novera.Source.ApiServices;
using Novera.Source.Response.EmailDetail;
using Novera.Source.Utility;

namespace Novera.Source.Pages.Crm.Email.EmailDetail;

public partial class EmailDetailPage : ContentPage

{
    ApiService<EmailDetailResponse> apiService;
#pragma warning disable CS0612
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
            loader.IsRunning = true;
            loader.IsVisible = true;

            string oauthToken = (await SecureStorage.Default.GetAsync("oauth_token")) ?? "";
            string email_id = (await SecureStorage.Default.GetAsync("email_id")) ?? "";
            string url = $"{ApiUrls.EmailDetail}{email_id}";

            var response = await apiService.getAsync(url,  this,oauthToken,HttpMethod.Get);

            if (response is EmailDetailResponse successResponse)
            {
                this.emailDetail.Text = $"Subject: {successResponse.data.emailDetails.subject}\nbody: {successResponse.data.emailDetails.body_Text}";
                this.from.Text = successResponse.data.emailDetails.sender;
                first_Char.Text=successResponse.data.emailDetails.sender.Substring(0, 1)[0].ToString();
                if (successResponse.data.emailDetails.important == "Y")
                {
                    status_image.Source = "favourite";
                }
                else
                {
                    status_image.Source = "email_star";

                }

                if (successResponse?.data?.documents != null) {
                    foreach (var obj in successResponse.data.documents)
                    {

                        var label = new Label
                        {
                            Text = obj.documentName,
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
                            WidthRequest=100,
                            HeightRequest=100,
                            Margin=5,

                            
                        };
                        imageStackLayout.Children.Add(frame);
                    }
                }






            }
            else
            {
                
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
    
