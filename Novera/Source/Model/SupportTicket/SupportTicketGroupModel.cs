using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Model.SupportTicket
{
    public class SupportTicketGroupModel : List<SupportTicketModel>
    {
        public string GroupTitle { get; set; }

        public SupportTicketGroupModel(string groupTitle, List<SupportTicketModel> supportTicketList) : base(supportTicketList)
        {
            GroupTitle = groupTitle;
        }
    }
}
