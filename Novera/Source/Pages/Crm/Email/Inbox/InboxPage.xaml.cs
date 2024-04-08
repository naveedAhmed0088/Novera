using Novera.Source.Pages.Crm.Email.Compose;

namespace Novera.Source.Pages.Crm.Email.Inbox;

public partial class InboxPage : ContentView
{
	public InboxPage()
	{
		InitializeComponent();
	}
	private void AddClicked(object sender, EventArgs e)
	{
		Shell.Current.GoToAsync(nameof(ComposeEmailPage));
	}
}