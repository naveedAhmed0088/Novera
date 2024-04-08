using Novera.Source.Pages.Crm.Calendar.Events;
using Novera.Source.Pages.Crm.Calendar.Tasks;

namespace Novera.Source.Pages.Crm.Calendar.CreateTask;

public partial class CreateTaskPage : ContentPage
{
	public CreateTaskPage()
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
		Navigation.PushAsync(new TaskDetailPage());
	}
}