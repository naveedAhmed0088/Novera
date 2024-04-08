namespace Novera.Source.Pages.Crm.Note.ViewNote;

public partial class ViewNotePage : ContentPage
{
	public ViewNotePage()
	{
		InitializeComponent();
		NavigationPage.SetHasNavigationBar(this, false);
	}
	private void BackBtnClicked(object sender, EventArgs e)
	{
		Navigation.PopAsync();
	}

}