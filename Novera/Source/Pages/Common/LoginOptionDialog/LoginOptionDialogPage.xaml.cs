namespace Novera.Source.Pages.Common.LoginOptionDialog;

public partial class LoginOptionDialogPage : ContentPage
{
    public LoginOptionDialogPage()
    {
        InitializeComponent();
    }

    private void OnSubmitClicked(object sender, EventArgs e)
    {
        Navigation.PopModalAsync();
    }
}