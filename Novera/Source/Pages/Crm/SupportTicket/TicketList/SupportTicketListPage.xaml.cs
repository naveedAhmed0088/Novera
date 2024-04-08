using Novera.Source.Pages.Crm.SupportTicket.History;
using Novera.Source.Pages.Crm.SupportTicket.NewTicket;

namespace Novera.Source.Pages.Crm.SupportTicket.TicketList;

public partial class SupportTicketListPage : ContentPage
{
    public SupportTicketListPage()
    {
        InitializeComponent();
    }
    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    void OnCollectionViewSelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        Navigation.PushAsync(new TicketHistoryListPage());
    }

    private void CreateTicketClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new CreateSupportTicketPage());
    }


}