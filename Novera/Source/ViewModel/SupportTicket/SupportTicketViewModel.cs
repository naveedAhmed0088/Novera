using Novera.Source.Model;
using Novera.Source.Model.SupportTicket;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace Novera.Source.ViewModel.SupportTicket
{
    public partial class SupportTicketViewModel : BaseViewModel
    {
        public SupportTicketViewModel()
        {
            this.SupportTicketList = new ObservableCollection<SupportTicketGroupModel>()
            {
                new SupportTicketGroupModel("Customer Client", new List<SupportTicketModel>{
                    new SupportTicketModel(){FullTitle ="Report A Bug", NoOfTicket ="(85)"},
                    new SupportTicketModel(){FullTitle ="Request A Feature", NoOfTicket ="(13)"},
                    new SupportTicketModel(){FullTitle ="Modify A Feature", NoOfTicket ="(8)"},
                    new SupportTicketModel(){FullTitle ="Support Tickets", NoOfTicket ="(4)"},
                }),
                new SupportTicketGroupModel("System Administration", new List<SupportTicketModel>{
                    new SupportTicketModel(){FullTitle ="Modify A Feature", NoOfTicket ="(8)"},
                    new SupportTicketModel(){FullTitle ="Support Tickets", NoOfTicket ="(4)"},
                })
             };

        }
        public ObservableCollection<SupportTicketGroupModel> SupportTicketList { get; set; }

    }
}
