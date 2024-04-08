using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Novera.Source.GlobalValues.EnumValues;

namespace Novera.Source.Model.Dashboard
{
    public class DashboardModel
    {
        public string Name { get; set; }
        public string Icon { get; set; }
        public DashboardType Type { get; set; }

    }
}
