using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Model.Settings
{
    public class SettingsGroupModel : List<SettingsModel>
    {
        public string GroupTitle { get; set; }

        public SettingsGroupModel(string groupTitle, List<SettingsModel> settingsList) : base(settingsList)
        {
            GroupTitle = groupTitle;
        }
    }
}
