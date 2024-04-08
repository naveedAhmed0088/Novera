using Novera.Source.Model.Dashboard;
using Novera.Source.ViewModel.Dashboard;
using Telerik.Maui.Controls.Compatibility.Common;

namespace Novera.Source.Pages.Crm.Dashboard;

public partial class DashboardPage : ContentPage
{
	public DashboardPage()
	{
		InitializeComponent();
		NavigationPage.SetHasNavigationBar(this, false);
		BindingContext = new DashboardViewModel(Navigation);
	}

	private void LogoutBtnClicked(object sender, EventArgs e)
	{
		Navigation.PopAsync();
	}

}