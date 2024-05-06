using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Response.CRMPages
{
    public class InboxPageMarkResponse
    {
        public bool success { get; set; }
        public string message { get; set; }
        public object data { get; set; }
    }
    public class DictionaryData
    {
        public Dictionary<string, object> FormData { get; set; }
    }

}
