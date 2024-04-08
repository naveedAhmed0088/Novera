using Novera.Source.Model;
using Novera.Source.Model.SupportTicket;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace Novera.Source.ViewModel.SupportTicket
{
    public partial class TicketHistoryViewModel : BaseViewModel
    {
        public TicketHistoryViewModel()
        {
            this.TicketHistoryList = new ObservableCollection<TicketHistoryModel>()
            {
                new TicketHistoryModel() { Name = "Robin Sharma", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
                new TicketHistoryModel() { Name = "Charlie Thompson", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
                new TicketHistoryModel() { Name = "Morgan Cook", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
                new TicketHistoryModel() { Name = "Hank Baldwin", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
                new TicketHistoryModel() { Name = "Emanuel Jacobs", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
                new TicketHistoryModel() { Name = "Kenzie Ryan", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
                new TicketHistoryModel() { Name = "UX Collective", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
                new TicketHistoryModel() { Name = "Sofie Leach", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
                new TicketHistoryModel() { Name = "John Doe", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
                new TicketHistoryModel() { Name = "James Fernandez", Date = "03/01/2023", Time = "01:45", Subject="Grid Column & Doee", TicketNo ="23455"},
             };

        }
        public ObservableCollection<TicketHistoryModel> TicketHistoryList { get; set; }

    }
}
