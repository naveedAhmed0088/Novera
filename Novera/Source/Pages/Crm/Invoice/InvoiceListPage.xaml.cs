using Novera.Source.Pages.Crm.SupportTicket.History;
using Novera.Source.Pages.Crm.SupportTicket.NewTicket;

namespace Novera.Source.Pages.Crm.Invoice;

public partial class InvoiceListPage : ContentPage
{
    public InvoiceListPage()
    {
        InitializeComponent();
    }
    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    void OnCollectionViewSelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        // Navigation.PushAsync(new TicketHistoryListPage());
    }



}