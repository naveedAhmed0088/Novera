using Novera.Resources.Strings;
using System;
using System.ComponentModel;
using System.Globalization;

namespace Novera.Source.Utility
{
   public class Translator : INotifyPropertyChanged
    {
        public string this[string key] 
        { 
            get =>language.ResourceManager.GetString(key,CultureInfo);
        }
        public CultureInfo CultureInfo { get; set; }
        public static Translator Instance { get; set; } = new Translator();

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged()
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(null));
        }
    }
}
