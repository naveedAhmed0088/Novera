using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Model.SupportTicket
{
    public class ModuleTypeModel
    {
        public string Folder { get; set; }
        public string Population { get; set; }
        public string Name { get; set; }
        public int Visibility { get; set; }
        public DateTimeOffset Date { get; set; }

    }
}
