namespace Novera.Source.Pages.Crm.SupportTicket.NewTicket;

public partial class CreateSupportTicketPage : ContentPage
{
    public CreateSupportTicketPage()
    {
        InitializeComponent();
        NavigationPage.SetHasNavigationBar(this, false);
    }
    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    private void TicketType_SelectionChanged(object sender, System.EventArgs e)
    {
        // implement your logic here
    }
}