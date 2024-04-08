
using System.Collections.ObjectModel;
using Novera.Source.Model.Calendar;
using Novera.Source.ViewModel;

namespace Novera.Source.ViewModel.Calendar;

public partial class AddPeopleViewModel : BaseViewModel
{
    public AddPeopleViewModel()
    {
        this.PeopleList = new ObservableCollection<AddPeopleModel>()
            {
                new AddPeopleModel() { Title = "Novera GST submission", Email="dpk@sixwares.com"},
                new AddPeopleModel() { Title = "GST submission", Email="pankaj@sixwares.com"},
                new AddPeopleModel() { Title = "Novera Project meeting", Email="pankaj@sixwares.com"},
                new AddPeopleModel() { Title = "Christmas",  Email="pankaj@sixwares.com"},
            };
    }


    public ObservableCollection<AddPeopleModel> PeopleList { get; set; }
}