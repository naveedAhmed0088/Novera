namespace Novera.Source.Pages.Crm.SupportTicket.History;

public partial class TicketHistoryListPage : ContentPage
{
    public TicketHistoryListPage()
    {
        InitializeComponent();
    }
    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

}