using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Novera.Source.Model.Dashboard;
using Novera.Source.Model.Language;
using Novera.Source.ViewModel;

namespace Novera.Source.ViewModel.Language
{
    public class LanguageViewModel : BaseViewModel
    {
        public LanguageViewModel()
        {
            this.languageList = new ObservableCollection<LanguageModel>()
            {
                new LanguageModel() { Name = "English", Icon="flag_usa",  languageCode="en-US"},
                new LanguageModel() { Name = "Slovak", Icon="flag_slovak", languageCode="sk-SK"},
                new LanguageModel() { Name = "Cheque", Icon="flag_cheque", languageCode="cs-CZ"},
                new LanguageModel() { Name = "Russia", Icon="flag_russia", languageCode="ru-RU"},
                new LanguageModel() { Name = "Hungarian", Icon="flag_hungary", languageCode = "hu-HU"},
                new LanguageModel() { Name = "Germany", Icon="flag_germany", languageCode = "de-DE"},
                // new LanguageModel() { Name = "India", Icon="flag_china"},
                // new LanguageModel() { Name = "Malaysia", Icon="flag_china"},
                // new LanguageModel() { Name = "Honkong", Icon="flag_china"},
                // new LanguageModel() { Name = "Africa", Icon="flag_china"},
                // new LanguageModel() { Name = "Germany", Icon="flag_germany"},
                // new LanguageModel() { Name = "India", Icon="flag_china"},
                // new LanguageModel() { Name = "Malaysia", Icon="flag_china"},
                // new LanguageModel() { Name = "Honkong", Icon="flag_china"},
                // new LanguageModel() { Name = "Africa", Icon="flag_china"},
             };
        }


        public ObservableCollection<LanguageModel> languageList { get; set; }
    }
}
