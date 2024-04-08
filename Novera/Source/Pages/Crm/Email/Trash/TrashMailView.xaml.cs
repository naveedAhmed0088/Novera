using Novera.Source.Pages.Crm.Email.Compose;

namespace Novera.Source.Pages.Crm.Email.Trash;

public partial class TrashMailView : ContentView
{
	public TrashMailView()
	{
		InitializeComponent();
	}

    private void AddClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new ComposeEmailPage());
    }
}