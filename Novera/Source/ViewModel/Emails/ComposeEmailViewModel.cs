using System.Collections.ObjectModel;
using Novera.Source.ViewModel;

namespace Novera.Source.ViewModel.Emails;

public class ComposeEmailViewModel : BaseViewModel
{
    public ObservableCollection<City> Items { get; set; }


    private int SelectedToEmailIndex = -1;
    public ComposeEmailViewModel()
    {
        this.Items = new ObservableCollection<City>
        {
            new City { Name = "deepak@sixwares.com", Population = 13929286 },
            new City { Name = "pankaj@sixwares.com", Population = 8623000 },
            new City { Name = "sonal@sixwares.com", Population = 8908081 },
            new City { Name = "deepak1@sixwares.com", Population = 3223334 },
            new City { Name = "deepak2@sixwares.com", Population = 4000000},
            new City { Name = "deepak3@sixwares.com", Population = 2141000 },
            new City { Name = "deepak4@sixwares.com", Population = 21540000 },
            new City { Name = "deepak5@sixwares.com", Population = 5612000 },
            new City { Name = "deepak6@sixwares.com", Population = 18980000 },
            new City { Name = "deepak7@sixwares.com", Population = 8305218 },
            new City { Name = "deepak8@sixwares.com", Population = 3748000 },
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

    public class City
    {
        public string Name { get; set; }
        public int Population { get; set; }
    }
}