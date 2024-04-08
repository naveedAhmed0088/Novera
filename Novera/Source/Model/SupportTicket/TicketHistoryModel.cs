using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Model.SupportTicket
{
    public class TicketHistoryModel
    {
        public string Date { get; set; }
        public string Time { get; set; }
        public string Name { get; set; }
        public string Subject { get; set; }
        public int Visibility { get; set; }
        public string TicketNo { get; set; }

    }
}
