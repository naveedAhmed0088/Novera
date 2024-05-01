
namespace Novera;

using Novera.Resources;
using Novera.Resources.Strings;
using Novera.Source.Utility;
using System.Globalization;
public partial class App : Application
{
    public App()
    {
        InitializeComponent();
        //AppRes.Culture = new System.Globalization.CultureInfo("ar-SY");
        //AppResources.Culture = new CultureInfo("de-li");
        //LanguageUtility.ChangeLanguage("de-li");


        //Translator.Instance.CultureInfo = new CultureInfo("hi-in");
        MainPage = new AppShell();
    }
}

