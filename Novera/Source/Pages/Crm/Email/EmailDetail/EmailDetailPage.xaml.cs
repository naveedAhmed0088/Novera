

namespace Novera.Source.Pages.Crm.Email.EmailDetail;

public partial class EmailDetailPage : ContentPage
{
    public EmailDetailPage()
    {
        InitializeComponent();
        NavigationPage.SetHasNavigationBar(this, false);
        this.emailDetail.Text = "Subject: djdjjd ";
        this.emailDetail.IsEnabled = false;
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
}