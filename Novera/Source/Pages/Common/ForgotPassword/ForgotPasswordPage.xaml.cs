using Novera.Source.Pages.Common.Login;

namespace Novera.Source.Pages.Common.ForgotPassword;

public partial class ForgotPasswordPage : ContentPage
{
    public ForgotPasswordPage()
    {
        InitializeComponent();
    }
    private void OnResetClicked(object sender, EventArgs e)
    {

    }

    private void OnLoginTapped(object sender, EventArgs e)
    {
        Shell.Current.Navigation.PopAsync();
    }
}