
using Novera.Source.Pages.Crm.Email.EmailDetail;
using Novera.Source.ViewModel.Emails;
using static Novera.Source.ViewModel.Emails.ComposeEmailViewModel;

namespace Novera.Source.Pages.Crm.Email.Compose;

public partial class ComposeEmailPage : ContentPage
{
    public ComposeEmailPage()
    {
        InitializeComponent();
        BindingContext = new ComposeEmailViewModel();
        NavigationPage.SetHasNavigationBar(this, false);
    }

    private void RemoveToEmailTapped(object sender, System.EventArgs e)
    {
        var closeLabel = sender as Image;
        if (closeLabel != null)
        {
            var item = closeLabel.BindingContext as City;
            if (item != null)
            {
                this.comboBox.SelectedItems.Remove(item);
            }
        }
    }

    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }
    private void EditBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();

    }

    private void DetailBtnClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new EmailDetailPage());

    }

}