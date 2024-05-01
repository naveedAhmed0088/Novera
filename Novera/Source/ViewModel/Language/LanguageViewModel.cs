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
                new LanguageModel() { Name = "United States", Icon="flag_usa",  languageCode="en-US"},
                new LanguageModel() { Name = "Australia", Icon="flag_australia", languageCode="en-GB"},
                new LanguageModel() { Name = "Canada", Icon="flag_canada", languageCode="en-US"},
                new LanguageModel() { Name = "China", Icon="flag_china", languageCode="zh-CN"},
                new LanguageModel() { Name = "Bangladesh", Icon="flag_bangladesh", languageCode = "es-PA"},
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
