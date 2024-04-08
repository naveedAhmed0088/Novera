namespace Novera.Source.Pages.Crm.Calendar.People;

public partial class AddPeopleListPage : ContentPage
{
    public AddPeopleListPage()
    {
        InitializeComponent();
        NavigationPage.SetHasNavigationBar(this, false);
    }
    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }
}