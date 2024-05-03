using Novera.Source.Model;
using Novera.Source.Model.SupportTicket;
using System.Collections.ObjectModel;
using System.Windows.Input;
using Novera.Resources.Strings;
using System.Resources;
namespace Novera.Source.ViewModel.SupportTicket
{ 
    public partial class SupportTicketViewModel : BaseViewModel
    {
        private readonly ResourceManager _resourceManager;
        public SupportTicketViewModel()
        {
            _resourceManager = new ResourceManager(typeof(language));
            this.SupportTicketList = new ObservableCollection<SupportTicketGroupModel>()
            {
               new SupportTicketGroupModel(_resourceManager.GetString("e3102003"), new List<SupportTicketModel>{
                    new SupportTicketModel(){FullTitle = _resourceManager.GetString("e5805021"), NoOfTicket ="(85)"},
                    new SupportTicketModel(){FullTitle = _resourceManager.GetString("e5805022"), NoOfTicket ="(13)"},
                    new SupportTicketModel(){FullTitle = _resourceManager.GetString("e5805025"), NoOfTicket ="(8)"},
                    new SupportTicketModel(){FullTitle = _resourceManager.GetString("e5805024"), NoOfTicket ="(4)"},
                }),
                new SupportTicketGroupModel(_resourceManager.GetString("e9901129"), new List<SupportTicketModel>{
                    new SupportTicketModel(){FullTitle = _resourceManager.GetString("e5805025"), NoOfTicket ="(8)"},
                    new SupportTicketModel(){FullTitle =_resourceManager.GetString("e5805024"), NoOfTicket ="(4)"},
                })
             };

        }
        public ObservableCollection<SupportTicketGroupModel> SupportTicketList { get; set; }

    }
}
