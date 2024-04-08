using CommunityToolkit.Maui.Views;
using Novera.Source.Pages.Common.ContactDetail;
using Novera.Source.Pages.Common.ForgotPassword;
using Novera.Source.Pages.Common.LanguageSelection;
using Novera.Source.Pages.Common.Login;
using Novera.Source.Pages.Common.Register;
using Novera.Source.Pages.Crm.Calendar.ScheduleCalendar;
using Novera.Source.Pages.Crm.Dashboard;
using Novera.Source.Pages.Crm.Document;
using Novera.Source.Pages.Crm.Email;
using Novera.Source.Pages.Crm.Email.Compose;
using Novera.Source.Pages.Crm.Email.EmailDetail;
using Novera.Source.Pages.Crm.Email.Inbox;
using Novera.Source.Pages.Crm.Email.Sent;
using Novera.Source.Pages.Crm.Email.Trash;
using Novera.Source.Pages.Crm.Invoice;
using Novera.Source.Pages.Crm.Note;
using Novera.Source.Pages.Crm.Note.AddNote;
using Novera.Source.Pages.Crm.Note.ViewNote;
using Novera.Source.Pages.Crm.Settings;
using Novera.Source.Pages.Crm.Settings.Team;
using Novera.Source.Pages.Crm.SupportTicket.History;
using Novera.Source.Pages.Crm.SupportTicket.NewTicket;
using Novera.Source.Pages.Crm.SupportTicket.TicketList;
using Novera.Source.Pages.Crm.Settings.Detail;


namespace Novera;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();


        Routing.RegisterRoute(nameof(LoginPage), typeof(LoginPage));
        Routing.RegisterRoute(nameof(RegisterPage), typeof(RegisterPage));
        Routing.RegisterRoute(nameof(LanguageSelectionPage), typeof(LanguageSelectionPage));
        Routing.RegisterRoute(nameof(ForgotPasswordPage), typeof(ForgotPasswordPage));
        Routing.RegisterRoute(nameof(ContactDetailPage), typeof(ContactDetailPage));


        Routing.RegisterRoute(nameof(EmailPage), typeof(EmailPage));
        Routing.RegisterRoute(nameof(InboxPage), typeof(InboxPage));
        //Routing.RegisterRoute(nameof(SentMailView), typeof(SentMailView));
        //Routing.RegisterRoute(nameof(TrashMailView), typeof(TrashMailView));
        Routing.RegisterRoute(nameof(ComposeEmailPage), typeof(ComposeEmailPage));
        Routing.RegisterRoute(nameof(EmailDetailPage), typeof(EmailDetailPage));


        Routing.RegisterRoute(nameof(ScheduleCalendarPage), typeof(ScheduleCalendarPage));

        Routing.RegisterRoute(nameof(DashboardPage), typeof(DashboardPage));

        Routing.RegisterRoute(nameof(SupportTicketListPage), typeof(SupportTicketListPage));
        Routing.RegisterRoute(nameof(CreateSupportTicketPage), typeof(CreateSupportTicketPage));
        Routing.RegisterRoute(nameof(TicketHistoryListPage), typeof(TicketHistoryListPage));

        Routing.RegisterRoute(nameof(AddNotePage), typeof(AddNotePage));
        Routing.RegisterRoute(nameof(NoteListPage), typeof(NoteListPage));
        Routing.RegisterRoute(nameof(ViewNotePage), typeof(ViewNotePage));

        Routing.RegisterRoute(nameof(DocumentPage), typeof(DocumentPage));
        Routing.RegisterRoute(nameof(DocumentDetailPage), typeof(DocumentDetailPage));
        Routing.RegisterRoute(nameof(UploadDocumentPage), typeof(UploadDocumentPage));

        Routing.RegisterRoute(nameof(SettingsListPage), typeof(SettingsListPage));

        Routing.RegisterRoute(nameof(InvoiceListPage), typeof(InvoiceListPage));

        Routing.RegisterRoute(nameof(TeamSettingPage), typeof(TeamSettingPage));
        Routing.RegisterRoute(nameof(SettingsDetailPage), typeof(SettingsDetailPage));
    }

    private void OnLogoutClicked(object sender, EventArgs e)
    {
        //Shell.Current.FlyoutIsPresented = false;
        Shell.Current.GoToAsync($"//{nameof(LoginPage)}");
    }

    private void OnCrossIconClicked(object sender, EventArgs e)
    {
        Shell.Current.FlyoutIsPresented = false;
    }
}
