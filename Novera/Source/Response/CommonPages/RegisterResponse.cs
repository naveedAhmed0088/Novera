using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Response.CommpnPages
{
    public class Data
    {
        public UserDetails userDetails { get; set; }
    }

    public class RegisterResponse
    {
        public bool success { get; set; }
        public string message { get; set; }
        public Data data { get; set; }
    }

    public class UserDetails
    {
        public int userID { get; set; }
        public string userName { get; set; }
        public string userTitle { get; set; }
        public string userPassword { get; set; }
        public object iV_InitializationVector { get; set; }
        public string userEmail { get; set; }
        public int roleId { get; set; }
        public int userStartPage { get; set; }
        public DateTime accountExpiry { get; set; }
        public string cultureInfo { get; set; }
        public int timeZoneUTC { get; set; }
        public int userStartProduct { get; set; }
        public int gdprRoleId { get; set; }
        public DateTime createdDate { get; set; }
        public object createdBy { get; set; }
        public object modifiedDate { get; set; }
        public object modifiedBy { get; set; }
        public string userPasswordText { get; set; }
        public object myTaxCountryCode { get; set; }
        public object docDetails { get; set; }
        public object docMimeType { get; set; }
        public object smsMobile { get; set; }
    }

}
