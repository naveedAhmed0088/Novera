using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Model.Emails
{
    public class EmailModalInbox
    {
        public string subject { get; set; }
        public string bodyText { get; set; }
        public string received { get; set; }
        public Color Color { get; set; }
        public string important { get; set; }

    }
}
