using Novera.Source.Model;
using Novera.Source.Model.Settings;
using Novera.Source.Model.SupportTicket;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace Novera.Source.ViewModel.Settings
{
    public partial class SettingsViewModel : BaseViewModel
    {
        public SettingsViewModel()
        {
            this.SettingsList = new ObservableCollection<SettingsGroupModel>()
            {
                new SettingsGroupModel("Entity Configuration", new List<SettingsModel>{}),
                new SettingsGroupModel("User Administration", new List<SettingsModel>{
                    new SettingsModel(){FullTitle ="User Preferences", NoOfTicket ="(8)"},
                    new SettingsModel(){FullTitle ="Add or Edit Apps", NoOfTicket ="(4)"},
                }),
                new SettingsGroupModel("Account Enquiry", new List<SettingsModel>{}),
                new SettingsGroupModel("Help Center", new List<SettingsModel>{}),
                new SettingsGroupModel("Log-out", new List<SettingsModel>{}),

             };


            this.SettingsTeamList = new ObservableCollection<SettingsTeamModel>()
            {
                new SettingsTeamModel("12345","Catalina Mathews","","Accounting Assistant","Super User","IT Security Offices"),
                new SettingsTeamModel("12345","Catalina Mathews","","Accounting Assistant","Super User","IT Security Offices"),
                new SettingsTeamModel("12345","Catalina Mathews","","Accounting Assistant","Super User","IT Security Offices"),
                new SettingsTeamModel("12345","Catalina Mathews","","Accounting Assistant","Super User","IT Security Offices"),
                new SettingsTeamModel("12345","Catalina Mathews","","Accounting Assistant","Super User","IT Security Offices"),
             };
        }
        public ObservableCollection<SettingsGroupModel> SettingsList { get; set; }

        public ObservableCollection<SettingsTeamModel> SettingsTeamList { get; set; }

    }
}
