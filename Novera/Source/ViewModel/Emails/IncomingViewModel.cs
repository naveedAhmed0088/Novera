using System.Collections.ObjectModel;
using Novera.Source.Model.Emails;

namespace Novera.Source.ViewModel.Emails;

public class IncomingViewModel
{
    public IncomingViewModel()
    {
        this.People = new ObservableCollection<Person>()
            {
                new Person() { FirstLetter = "A",Name = "Amazon", Information = "The Last 6h [The Circle of Legends]", Color = Color.FromArgb("#FFAE02"), Date = "22 June", IsContrastStarIcon = false},
                new Person() { FirstLetter = "D",Name = "David Brook", Information = "Get inspired by these top creatives", Color = Color.FromArgb("#E95B0C"), Date ="20 June", IsContrastStarIcon = true},
                new Person() { FirstLetter = "O",Name = "Oliver Queen", Information = "Optimizing .NET MAUI Apps & Libraries with… the Linker", Color = Color.FromArgb("#8660C5"), Date ="20 June", IsContrastStarIcon = true},
                new Person() { FirstLetter = "J",Name = "John Olive", Information = "Request Time Off - Successfully Completed", Color = Color.FromArgb("#FF9040"), Date ="19 June", IsContrastStarIcon = true},
                new Person() { FirstLetter = "E",Name = "Erin Regan", Information = "Release Notes", Color = Color.FromArgb("#FFAE02"), Date = "18 June", IsContrastStarIcon = false},
                new Person() { FirstLetter = "R",Name = "Ryan Raynolads", Information = "New recommendations in Graphic Design and Interaction", Color = Color.FromArgb("#8660C5"), Date = "17 June", IsContrastStarIcon = true},
             };
    }

    public ObservableCollection<Person> People { get; set; }
}
