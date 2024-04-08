using Novera.Source.Pages.Crm.Settings.Team;

namespace Novera.Source.Pages.Crm.Settings.Detail;

public partial class SettingsDetailPage : ContentPage
{
	public SettingsDetailPage()
	{
		InitializeComponent();
	}

    void Save_Btn_Clicked(System.Object sender, System.EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(TeamSettingPage));
    }

   
}