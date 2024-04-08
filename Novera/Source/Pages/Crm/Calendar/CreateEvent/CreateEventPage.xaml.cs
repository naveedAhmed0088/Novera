using Novera.Source.Pages.Crm.Calendar.Events;

namespace Novera.Source.Pages.Crm.Calendar.CreateEvent;

public partial class CreateEventPage : ContentPage
{
	public CreateEventPage()
	{
		InitializeComponent();
		NavigationPage.SetHasNavigationBar(this, false);
	}

	private void BackBtnClicked(object sender, EventArgs e)
	{
		Navigation.PopAsync();
	}
	private void SaveBtnClicked(object sender, EventArgs e)
	{
		Navigation.PushAsync(new EventDetailPage());
	}
}