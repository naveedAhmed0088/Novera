using Novera.Source.Pages.Crm.Email.Compose;
using Novera.Source.ViewModel.Emails;

namespace Novera.Source.Pages.Crm.Email.Sent;

public partial class SentMailView : ContentView
{
	public SentMailView()
	{
		InitializeComponent();
		
	}
    private void AddClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new ComposeEmailPage());
    }
}