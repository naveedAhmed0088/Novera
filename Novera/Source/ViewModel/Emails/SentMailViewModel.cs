
using System.Collections.ObjectModel;
using Novera.Source.Model.Emails;

namespace Novera.Source.ViewModel.Emails;
public class SentMailViewModel
{
    public SentMailViewModel()
    {
        this.SentEmailList = new ObservableCollection<SentModel>()
            {
                new SentModel() { FirstLetter = "R",To = "Robin Sharma", Subject = "The Last 6h [The Circle of Legends]", Color = Color.FromArgb("#FFAE02"), Date = "22 June", IsContrastStarIcon = false},
                new SentModel() { FirstLetter = "C",To = "Charlie Thompson", Subject = "Get inspired by these top creatives", Color = Color.FromArgb("#E95B0C"), Date ="20 June", IsContrastStarIcon = true},
                new SentModel() { FirstLetter = "M",To = "Morgan Cook", Subject = "Optimizing .NET MAUI Apps & Libraries with… the Linker", Color = Color.FromArgb("#8660C5"), Date ="20 June", IsContrastStarIcon = true},
                new SentModel() { FirstLetter = "H",To = "Hank Baldwin", Subject = "Request Time Off - Successfully Completed", Color = Color.FromArgb("#FF9040"), Date ="19 June", IsContrastStarIcon = true},
                new SentModel() { FirstLetter = "E",To = "Emanuel Jacobs", Subject = "Release Notes", Color = Color.FromArgb("#FFAE02"), Date = "18 June", IsContrastStarIcon = false},
                new SentModel() { FirstLetter = "K",To = "Kenzie Ryan", Subject = "New recommendations in Graphic Design and Interaction", Color = Color.FromArgb("#8660C5"), Date = "17 June", IsContrastStarIcon = true},
                new SentModel() { FirstLetter = "U",To = "UX Collective", Subject = "The UX Collective Newsletter", Color = Color.FromArgb("#04A2AA"), Date="16 June", IsContrastStarIcon = false},
                new SentModel() { FirstLetter = "S",To = "Sofie Leach", Subject = "Design the new website", Color = Color.FromArgb("#FF9040"), Date = "10 June", IsContrastStarIcon = false},
                new SentModel() { FirstLetter = "J",To = "John Doe", Subject = "Planning meeting", Color = Color.FromArgb("#04A2AA"), Date = "8 June", IsContrastStarIcon = true},
                new SentModel() { FirstLetter = "J",To = "James Fernandez", Subject = "Request summer vacation - approved", Color = Color.FromArgb("#8660C5"), Date = "5 June", IsContrastStarIcon = false},
             };
    }

    public ObservableCollection<SentModel> SentEmailList { get; set; }
}
