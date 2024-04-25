using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Response.CommpnPages.Failure
{
    // Root myDeserializedClass = JsonConvert.DeserializeObject<Root>(myJsonResponse);
    
    public class LoginFailureResponse
    {
        public bool success { get; set; }
        public string message { get; set; }
        public object data { get; set; }
    }

        
}
