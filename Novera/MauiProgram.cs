#if ANDROID
using System.Reflection.Metadata;
using Android.Content.Res;
#endif
using CommunityToolkit.Maui;
using Microsoft.Extensions.Logging;
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
using Novera.Source.Pages.Crm.Settings.Detail;
using Novera.Source.Pages.Crm.Settings.Team;
using Novera.Source.Pages.Crm.SupportTicket.History;
using Novera.Source.Pages.Crm.SupportTicket.NewTicket;
using Novera.Source.Pages.Crm.SupportTicket.TicketList;
using Telerik.Maui.Controls.Compatibility;
namespace Novera
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseTelerik()
                .UseMauiApp<App>()
                .RegisterServices()
                .UseMauiCommunityToolkit()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("applegothic.ttf", "AppleGothic");
                    fonts.AddFont("Century Gothic.ttf", "CenturyGothic");
                    fonts.AddFont("gothicb.ttf", "CenturyGothicBold");
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");

                });

#if DEBUG
            builder.Logging.AddDebug();
#endif
            Microsoft.Maui.Handlers.EntryHandler.Mapper.AppendToMapping(nameof(Entry), (handler, view) =>
            {
#if ANDROID
                handler.PlatformView.BackgroundTintList = ColorStateList.ValueOf(Android.Graphics.Color.Transparent);
#endif
            });

            Microsoft.Maui.Handlers.EntryHandler.Mapper.AppendToMapping(nameof(Editor), (handler, view) =>
            {
#if ANDROID
                handler.PlatformView.BackgroundTintList = ColorStateList.ValueOf(Android.Graphics.Color.Transparent);
#endif
            });

            builder.Services.AddTransient<LoginPage>();
            builder.Services.AddTransient<RegisterPage>();
            builder.Services.AddTransient<ForgotPasswordPage>();
            builder.Services.AddTransient<ContactDetailPage>();
            builder.Services.AddTransient<LanguageSelectionPage>();

            builder.Services.AddTransient<EmailPage>();
            builder.Services.AddTransient<InboxPage>();
            //builder.Services.AddTransient<SentMailView>();
            //builder.Services.AddTransient<TrashMailView>();
            builder.Services.AddTransient<ComposeEmailPage>();
            builder.Services.AddTransient<EmailDetailPage>();

            builder.Services.AddTransient<ScheduleCalendarPage>();

            builder.Services.AddTransient<DashboardPage>();


            builder.Services.AddTransient<SupportTicketListPage>();
            builder.Services.AddTransient<TicketHistoryListPage>();
            builder.Services.AddTransient<CreateSupportTicketPage>();

            builder.Services.AddTransient<AddNotePage>();
            builder.Services.AddTransient<ViewNotePage>();
            builder.Services.AddTransient<NoteListPage>();

            builder.Services.AddTransient<DocumentPage>();
            builder.Services.AddTransient<DocumentDetailPage>();
            builder.Services.AddTransient<UploadDocumentPage>();

            builder.Services.AddTransient<SettingsListPage>();

            builder.Services.AddTransient<InvoiceListPage>();
            builder.Services.AddTransient<TeamSettingPage>();
            builder.Services.AddTransient<SettingsDetailPage>();
            return builder.Build();
        }


        /// <summary>
        /// Register services during app builder
        /// </summary>
        /// <param name="mauiAppBuilder">The MauiAppBuilder building the MauiApp</param>
        /// <returns>The MauiAppBuilder with the services registered to it</returns>
        private static MauiAppBuilder RegisterServices(this MauiAppBuilder mauiAppBuilder)
        {
            //This service is needed to inject IStringLocalizer into LocalizeExtension
            mauiAppBuilder.Services.AddLocalization();

            //IStringLocalizer appears to be dependent on a logging service 
            mauiAppBuilder.Services.AddLogging();

            //Register other services here

            return mauiAppBuilder;
        }
    }
}
