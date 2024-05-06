using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Response.CommpnPages.Success
{
    public class RegisterResponse
    {
        public bool success { get; set; }
        public string? message { get; set; }
        public object? data { get; set; }
    }


}
