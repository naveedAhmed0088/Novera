using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Utility
{
    public static class ApiUrls
    {
        public const string BaseUrl = "http://46.29.2.121/api/";
        public const string LoginEndpoint = BaseUrl + "Account/Login";
        public const string forgetPasswordEndPoint = BaseUrl + "Account/ForgotPassword";
        public const string EmailDetail = BaseUrl + "Emails/";
        public const string ComposeEmail = BaseUrl + "Emails/send";



    }
}
