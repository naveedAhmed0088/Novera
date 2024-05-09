using System.Collections.ObjectModel;
using Novera.Source.Response;
using Novera.Source.ViewModel;

namespace Novera.Source.ViewModel.Emails;

public class ComposeEmailViewModel : BaseViewModel
{
    public ObservableCollection<EmailReceiverResponse> Items { get; set; }


    private int SelectedToEmailIndex = -1;
    public ComposeEmailViewModel()
    {
        this.Items = new ObservableCollection<EmailReceiverResponse>
        {
            new EmailReceiverResponse { Name = "naveed2@test.com" },
            new EmailReceiverResponse { Name = "deepak@sixwares.com"},
            new EmailReceiverResponse { Name = "pankaj@sixwares.com" },
            new EmailReceiverResponse { Name = "sonal@sixwares.com" },
            new EmailReceiverResponse { Name = "deepak1@sixwares.com" },
            new EmailReceiverResponse { Name = "deepak2@sixwares.com"},
            new EmailReceiverResponse { Name = "deepak3@sixwares.com" },
            new EmailReceiverResponse { Name = "deepak4@sixwares.com" },
            new EmailReceiverResponse { Name = "deepak5@sixwares.com" },
            new EmailReceiverResponse { Name = "deepak6@sixwares.com" },
            new EmailReceiverResponse { Name = "deepak7@sixwares.com" },
            new EmailReceiverResponse { Name = "deepak8@sixwares.com" },
        };
    }

    public int SelectedSkillIndex
    {
        get
        {
            return SelectedToEmailIndex;
        }
        set
        {
            if (SelectedToEmailIndex != value)
            {
                SelectedToEmailIndex = value;
                OnPropertyChanged();
            }
        }
    }

}