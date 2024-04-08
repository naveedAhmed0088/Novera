
namespace Novera.Source.GlobalValues
{
    public sealed class Settings
    {
        private const string AppLanguageKey = "AppLanguage";
        private const string AppLanguageDefault = "EN";
        /// <summary>
        /// Gets or sets the application language.
        /// </summary>
        /// <value>
        /// The application language.
        /// </value>
        public static string AppLanguage
        {
            get => Preferences.Get(AppLanguageKey, AppLanguageDefault);
            set => Preferences.Set(AppLanguageKey, value);
        }
    }
}
