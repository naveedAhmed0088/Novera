using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Novera.Source.Model.Emails;

namespace Novera.Source.ViewModel.Emails
{
    public class InboxViewModel
    {
        public InboxViewModel()
        {
            this.InboxEmails = new ObservableCollection<Person>()
            {
                new Person() { Name = "Robin Sharma", Information = "The Last 6h [The Circle of Legends]", Color = Color.FromArgb("#FFAE02"), Date = "22 June", IsContrastStarIcon = false},
                new Person() { Name = "Charlie Thompson", Information = "Get inspired by these top creatives", Color = Color.FromArgb("#E95B0C"), Date ="20 June", IsContrastStarIcon = true},
                new Person() { Name = "Morgan Cook", Information = "Optimizing .NET MAUI Apps & Libraries with… the Linker", Color = Color.FromArgb("#8660C5"), Date ="20 June", IsContrastStarIcon = true},
                new Person() { Name = "Hank Baldwin", Information = "Request Time Off - Successfully Completed", Color = Color.FromArgb("#FF9040"), Date ="19 June", IsContrastStarIcon = true},
                new Person() { Name = "Emanuel Jacobs", Information = "Release Notes", Color = Color.FromArgb("#FFAE02"), Date = "18 June", IsContrastStarIcon = false},
                new Person() { Name = "Kenzie Ryan", Information = "New recommendations in Graphic Design and Interaction", Color = Color.FromArgb("#8660C5"), Date = "17 June", IsContrastStarIcon = true},
                new Person() { Name = "UX Collective", Information = "The UX Collective Newsletter", Color = Color.FromArgb("#04A2AA"), Date="16 June", IsContrastStarIcon = false},
                new Person() { Name = "Sofie Leach", Information = "Design the new website", Color = Color.FromArgb("#FF9040"), Date = "10 June", IsContrastStarIcon = false},
                new Person() { Name = "John Doe", Information = "Planning meeting", Color = Color.FromArgb("#04A2AA"), Date = "8 June", IsContrastStarIcon = true},
                new Person() { Name = "James Fernandez", Information = "Request summer vacation - approved", Color = Color.FromArgb("#8660C5"), Date = "5 June", IsContrastStarIcon = false},
             };
        }

        public ObservableCollection<Person> InboxEmails { get; set; }
    }
}
