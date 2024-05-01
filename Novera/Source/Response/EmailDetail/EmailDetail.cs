using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Response.EmailDetail
{
    public class Data
    {
        public int mailId { get; set; }
        public string sender { get; set; }
        public string senderName { get; set; }
        public string sendTo { get; set; }
        public string subject { get; set; }
        public DateTime received { get; set; }
        public string body_Text { get; set; }
        public object unread { get; set; }
        public string important { get; set; }
    }

    public class EmailDetail
    {
        public bool success { get; set; }
        public string message { get; set; }
        public Data data { get; set; }
    }
}
