using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Novera.Source.Model.Emails;

namespace Novera.Source.ViewModel.Emails
{
    public class DraftViewModel
    {
        public DraftViewModel()
        {
            this.DraftList = new ObservableCollection<DraftModel>()
            {
                new DraftModel() { Name = "Draft", Subject="(no subject)", Color = Color.FromArgb("#FFAE02"), Date = "22 June", IsContrastStarIcon = false},
                new DraftModel() { Name = "Draft", Subject="(no subject)", Color = Color.FromArgb("#E95B0C"), Date ="20 June", IsContrastStarIcon = true},
                new DraftModel() { Name = "Draft", Subject="(no subject)", Color = Color.FromArgb("#8660C5"), Date ="20 June", IsContrastStarIcon = true},
                new DraftModel() { Name = "Draft", Subject="(no subject)", Color = Color.FromArgb("#FF9040"), Date ="19 June", IsContrastStarIcon = true},
                new DraftModel() { Name = "Draft", Subject="(no subject)", Color = Color.FromArgb("#FFAE02"), Date = "18 June", IsContrastStarIcon = false},
                new DraftModel() { Name = "Draft", Subject="(no subject)", Color = Color.FromArgb("#8660C5"), Date = "17 June", IsContrastStarIcon = true},
                new DraftModel() { Name = "Draft", Subject="(no subject)", Color = Color.FromArgb("#04A2AA"), Date="16 June", IsContrastStarIcon = false},
                new DraftModel() { Name = "Draft", Subject="(no subject)",  Color = Color.FromArgb("#FF9040"), Date = "10 June", IsContrastStarIcon = false},
                new DraftModel() { Name = "Draft", Subject="(no subject)",  Color = Color.FromArgb("#04A2AA"), Date = "8 June", IsContrastStarIcon = true},
                new DraftModel() { Name = "Draft", Subject="(no subject)",  Color = Color.FromArgb("#8660C5"), Date = "5 June", IsContrastStarIcon = false},
             };
        }

        public ObservableCollection<DraftModel> DraftList { get; set; }
    }
}
