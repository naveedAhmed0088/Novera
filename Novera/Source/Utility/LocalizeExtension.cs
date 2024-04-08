using Novera.Resources.LanguageFiles;
using Microsoft.Extensions.Localization;

namespace Novera.Source.Utility
{
    [ContentProperty(nameof(Key))]
    public class LocalizeExtension : IMarkupExtension
    {
        IStringLocalizer<ResourceStrings>? _localizer;

        public string Key { get; set; } = string.Empty;

        /// <summary>
        /// Extra string added to the localized value
        /// </summary>
        public string StringFormat { get; set; } = "{0}";

        /// <summary>
        /// Changes the case of the whole localized value
        /// </summary>
        public StringSettingsEnum StringSettings { get; set; } = StringSettingsEnum.Default;

        [Obsolete]
        public LocalizeExtension()
        {
            _localizer = ServiceHelper.GetService<IStringLocalizer<ResourceStrings>>();
        }

        /// <summary>
        /// Returns the localized value with all formating & settings provided
        /// </summary>
        /// <param name="serviceProvider">Localize service</param>
        /// <returns>The correctly formated translated string</returns>
        public object ProvideValue(IServiceProvider serviceProvider)
        {
            string localizedText = _localizer != null ? _localizer[Key] : string.Empty;
            switch (StringSettings)
            {
                case (StringSettingsEnum.Uppercase):
                    localizedText = localizedText.ToUpper();
                    break;
                case (StringSettingsEnum.Lowercase):
                    localizedText = localizedText.ToLower();
                    break;
            }
            return string.Format(StringFormat, localizedText);
        }

        object IMarkupExtension.ProvideValue(IServiceProvider serviceProvider) => ProvideValue(serviceProvider);

        public enum StringSettingsEnum
        {
            Default = 0,
            Uppercase = 1,
            Lowercase = 2
        }
    }
    public static class ServiceHelper
    {
        [Obsolete]
        public static TService? GetService<TService>()
        {
            return Current.GetService<TService>();
        }

        [Obsolete]
        public static IServiceProvider Current =>
#if WINDOWS
            MauiWinUIApplication.Current.Services;
#elif ANDROID
            MauiApplication.Current.Services;
#elif IOS || MACCATALYST
            MauiUIApplicationDelegate.Current.Services;
#else
            null;
#endif
    }
}
