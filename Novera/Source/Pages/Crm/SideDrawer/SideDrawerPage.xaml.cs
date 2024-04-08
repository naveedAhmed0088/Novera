using Novera.Source.Pages.Common.ForgotPassword;
using Novera.Source.Pages.Common.Register;
using Novera.Source.Pages.Crm.Calendar.ScheduleCalendar;
using Novera.Source.Pages.Crm.Dashboard;
using Novera.Source.Pages.Crm.Email;
using Novera.Source.Pages.Crm.Note;

namespace Novera.Source.Pages.Crm.SideDrawer;

public partial class SideDrawerPage : ContentPage
{
    public SideDrawerPage()
    {
        InitializeComponent();
        NavigationPage.SetHasNavigationBar(this, false);
    }

    private void OpenDrawer(object sender, EventArgs e)
    {
        this.drawer.IsOpen = !this.drawer.IsOpen;
    }

    private void OnDashboardClick(object sender, EventArgs e)
    {

    }
    private void OnLogoutClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    private void OnEmailClicked(object sender, EventArgs e)
    {
        this.drawer.IsOpen = false;
        Navigation.PushAsync(new EmailPage());
    }
    private void OnCalendarClicked(object sender, EventArgs e)
    {
        this.drawer.IsOpen = false;
        Navigation.PushAsync(new ScheduleCalendarPage());
    
    }
    private void OnNoteClicked(object sender, EventArgs e)
    {
        this.drawer.IsOpen = false;
        Navigation.PushAsync(new NoteListPage());
    }

    
}