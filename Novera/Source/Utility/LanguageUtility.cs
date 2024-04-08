using Novera.Source.GlobalValues;

namespace Novera.Source.Utility
{
    public class LanguageUtility
    {
        public static void ChangeLanguage(string languageCode)
        {
            //Save the language code to the settings
            Settings.AppLanguage = languageCode;
        
            Application.Current?.MainPage?.Dispatcher.Dispatch(() =>
            {
                
            });
        }
    }
}
