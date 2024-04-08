using System.Collections.ObjectModel;
using Novera.Source.Model.Emails;
using Novera.Source.Pages.Crm.Email;

namespace Novera.Source.ViewModel.Emails;

public class TrashViewModel
{
    public TrashViewModel()
    {
        this.TrashMailList = new ObservableCollection<TrashModel>()
            {
                new TrashModel() { FirstLetter = "E",Name = "Ekart", Subject = "The Last 6h [The Circle of Legends]", Color = Color.FromArgb("#FFAE02"), Date = "22 June", IsContrastStarIcon = false},
                new TrashModel() { FirstLetter = "G",Name = "Goliath Brook", Subject = "Get inspired by these top creatives", Color = Color.FromArgb("#E95B0C"), Date ="20 June", IsContrastStarIcon = true},
                new TrashModel() { FirstLetter = "B",Name = "Bruce Queen", Subject = "Optimizing .NET MAUI Apps & Libraries with… the Linker", Color = Color.FromArgb("#8660C5"), Date ="20 June", IsContrastStarIcon = true},
                new TrashModel() { FirstLetter = "C",Name = "Clark Olive", Subject = "Request Time Off - Successfully Completed", Color = Color.FromArgb("#FF9040"), Date ="19 June", IsContrastStarIcon = true},
                new TrashModel() { FirstLetter = "D",Name = "Danny Regan", Subject = "Release Notes", Color = Color.FromArgb("#FFAE02"), Date = "18 June", IsContrastStarIcon = false},
                new TrashModel() { FirstLetter = "H",Name = "Hugh Raynolads", Subject = "New recommendations in Graphic Design and Interaction", Color = Color.FromArgb("#8660C5"), Date = "17 June", IsContrastStarIcon = true},
                new TrashModel() { FirstLetter = "B",Name = "Back End", Subject = "The UX Collective Newsletter", Color = Color.FromArgb("#04A2AA"), Date="16 June", IsContrastStarIcon = false},
                new TrashModel() { FirstLetter = "K",Name = "Katie Leach", Subject = "Design the new website", Color = Color.FromArgb("#FF9040"), Date = "10 June", IsContrastStarIcon = false},
                new TrashModel() { FirstLetter = "J",Name = "Ju Wan Ju", Subject = "Planning meeting", Color = Color.FromArgb("#04A2AA"), Date = "8 June", IsContrastStarIcon = true},
                new TrashModel() { FirstLetter = "T",Name = "Tel Service", Subject = "Request summer vacation - approved", Color = Color.FromArgb("#8660C5"), Date = "5 June", IsContrastStarIcon = false},
             };
    }

    public ObservableCollection<TrashModel> TrashMailList { get; set; }
}
