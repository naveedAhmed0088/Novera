using Novera.Source.Pages.Crm.Settings.Detail;
using Novera.Source.Pages.Crm.Settings.Team;
using Novera.Source.Pages.Crm.SupportTicket.History;
using Novera.Source.Pages.Crm.SupportTicket.NewTicket;

namespace Novera.Source.Pages.Crm.Settings;

public partial class SettingsListPage : ContentPage
{
    public SettingsListPage()
    {
        InitializeComponent();
    }
    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    void OnCollectionViewSelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        Shell.Current.GoToAsync(nameof(SettingsDetailPage));
    }



}