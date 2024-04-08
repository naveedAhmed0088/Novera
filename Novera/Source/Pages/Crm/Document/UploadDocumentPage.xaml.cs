using Novera.Source.ViewModel.Document;

namespace Novera.Source.Pages.Crm.Document;

public partial class UploadDocumentPage : ContentPage
{
	public UploadDocumentPage()
	{
		InitializeComponent();
		NavigationPage.SetHasNavigationBar(this, false);
		BindingContext = new UploadDocumentViewModel();
	}

	private void BackBtnClicked(object sender, EventArgs e)
	{
		Navigation.PopAsync();
	}

	private void DocumentRefreshBtnClicked(object sender, EventArgs e)
	{
		Navigation.PopAsync();
	}

	private void DocumentDeleteBtnClicked(object sender, EventArgs e)
	{
		Navigation.PopAsync();
	}
}