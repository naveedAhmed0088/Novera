using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.Input;
using Novera.Source.Model.Dashboard;
using Novera.Source.Pages.Crm.Calendar.ScheduleCalendar;
using Novera.Source.Pages.Crm.Document;
using Novera.Source.Pages.Crm.Email;
using Novera.Source.Pages.Crm.Note;
using Novera.Source.Pages.Crm.Settings;
using Novera.Source.Pages.Crm.Settings.Team;
using Novera.Source.Pages.Crm.SupportTicket.TicketList;
using Novera.Source.ViewModel;
using static Novera.Source.GlobalValues.EnumValues;

namespace Novera.Source.ViewModel.Dashboard
{
    public partial class DashboardViewModel : BaseViewModel
    {
        INavigation navigation;
        public DashboardViewModel(INavigation navigation)
        {
            this.navigation = navigation;
            this.dashboardList = new ObservableCollection<DashboardModel>()
            {   new DashboardModel() { Name = "Email", Icon="dashboard_vat", Type = DashboardType.Email},
                new DashboardModel() { Name = "Calendar", Icon="dashboard_vat", Type = DashboardType.Calender},
                new DashboardModel() { Name = "Notes", Icon="dashboard_vat", Type = DashboardType.Notes},
                new DashboardModel() { Name = "Documents", Icon="dashboard_bank", Type = DashboardType.Reports},
                new DashboardModel() { Name = "Support\nTickets", Icon="dashboard_support_ticket", Type = DashboardType.SupportTickets},
                new DashboardModel() { Name = "Settings", Icon="dashboard_vat", Type = DashboardType.Settings},
                new DashboardModel() { Name = "Vat\nReturns", Icon="dashboard_vat", Type = DashboardType.VatReturn},
                new DashboardModel() { Name = "Reports", Icon="dashboard_report", Type = DashboardType.Reports},
                new DashboardModel() { Name = "Language\nTools", Icon="dashboard_language", Type = DashboardType.Language},
                new DashboardModel() { Name = "Exchange\nRates", Icon="dashboard_exchange", Type = DashboardType.ExchangeRates},

             };
        }

        public ObservableCollection<DashboardModel> dashboardList { get; set; }

        [RelayCommand]
        public void DashboardRowClick(DashboardModel model)
        {
            Page page = null;
            switch (model.Type)
            {
                case DashboardType.Notes:
                    page = new NoteListPage();
                    break;
                case DashboardType.Email:
                    page = new EmailPage();
                    break;
                case DashboardType.Calender:
                    page = new ScheduleCalendarPage();
                    break;

                case DashboardType.SupportTickets:
                    page = new SupportTicketListPage();
                    break;

                case DashboardType.Reports:
                    page = new DocumentPage();
                    break;
                case DashboardType.Settings:
                    page = new TeamSettingPage();
                    break;
            }
            if (page != null)
                navigation.PushAsync(page);
        }
    }
}
