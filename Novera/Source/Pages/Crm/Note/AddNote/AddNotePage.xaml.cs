namespace Novera.Source.Pages.Crm.Note.AddNote;

public partial class AddNotePage : ContentPage
{
	public AddNotePage()
	{
		InitializeComponent();
		NavigationPage.SetHasNavigationBar(this, false);
	}
	private void BackBtnClicked(object sender, EventArgs e)
	{
		Navigation.PopAsync();
	}
}