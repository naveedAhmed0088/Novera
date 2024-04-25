
namespace Novera.Source.Response.CommpnPages.Success
{
    
    public class Data
    {
        public ExpiryWarning expiryWarning { get; set; }
        public UserDetails userDetails { get; set; }
        public string sessionToken { get; set; }
    }

    public class ExpiryWarning
    {
        public bool warning { get; set; }
        public string message { get; set; }
    }

    public class LoginSuccessResponse
    {
        public bool success { get; set; }
        public string message { get; set; }
        public Data data { get; set; }
    }

    public class UserDetails
    {
        public int userId { get; set; }
        public string userName { get; set; }
        public object userTitle { get; set; }
        public string userPassword { get; set; }
        public object ivInitializationVector { get; set; }
        public string userEmail { get; set; }
        public int roleId { get; set; }
        public int userStartPage { get; set; }
        public DateTime accountExpiry { get; set; }
        public string cultureInfo { get; set; }
        public int timeZoneUtc { get; set; }
        public int userStartProduct { get; set; }
        public int gdprroleId { get; set; }
        public DateTime createdDate { get; set; }
        public object createdBy { get; set; }
        public object modifiedDate { get; set; }
        public object modifiedBy { get; set; }
        public string userPasswordText { get; set; }
        public object myTaxCountryCode { get; set; }
        public object docDetails { get; set; }
        public object docMimeType { get; set; }
        public object smsmobile { get; set; }
    }

}
