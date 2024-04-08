using Novera.Source.Pages.Crm.Email.Compose;

namespace Novera.Source.Pages.Crm.Email.Drafts;

public partial class DraftPage : ContentView
{
	public DraftPage()
	{
		InitializeComponent();
	}
    private void AddClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new ComposeEmailPage());
    }
}
