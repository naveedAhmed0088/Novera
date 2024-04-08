using Novera.Source.Pages.Common.ContactDetail;
using Novera.Source.Pages.Common.Login;

namespace Novera.Source.Pages.Common.LanguageSelection;

public partial class LanguageSelectionPage : ContentPage
{
	public LanguageSelectionPage()
	{
		InitializeComponent();
	}

	private void BackBtnClicked(object sender, EventArgs e)
	{
		Shell.Current.Navigation.PopAsync();
	}

	private void OnNextClicked(object sender, EventArgs e)
	{
		Shell.Current.GoToAsync(nameof(ContactDetailPage));
	}
	void OnCollectionViewSelectionChanged(object sender, SelectionChangedEventArgs e)
	{

	}
}