using Novera.Source.Pages.Common.Login;

namespace Novera.Source.Pages.Common.ContactDetail;

public partial class ContactDetailPage : ContentPage
{
	public ContactDetailPage()
	{
		InitializeComponent();
	}

	private void BackBtnClicked(object sender, EventArgs e)
	{
		Shell.Current.Navigation.PopAsync();
	}
}