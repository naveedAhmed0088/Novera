using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Model.Settings
{
    public class SettingsTeamModel
    {
        public string Name { get; set; }
        public string JobTitle { get; set; }
        public string UserId { get; set; }
        public string AccessRole { get; set; }
        public string GDPRRole {  get; set; }
        public string ImageURL { get; set; }


        public SettingsTeamModel(string userId, string name, string imageUrl,string jobTitle ,string accessRole, string gdprRole)
        {
            Name = name;
            JobTitle = jobTitle;
            UserId = userId;
            AccessRole = accessRole;
            GDPRRole = gdprRole;
            ImageURL = imageUrl;
        }
    }
}
