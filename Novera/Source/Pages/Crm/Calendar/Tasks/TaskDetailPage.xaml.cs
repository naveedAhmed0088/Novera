using Novera.Source.Pages.Crm.Calendar.CreateEvent;

namespace Novera.Source.Pages.Crm.Calendar.Tasks;

public partial class TaskDetailPage : ContentPage
{
    public TaskDetailPage()
    {
        InitializeComponent();
        NavigationPage.SetHasNavigationBar(this, false);

    }

    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }
    private void EditBtnClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new CreateEventPage());

    }

    private void DeleteBtnClicked(object sender, EventArgs e)
    {


    }

}