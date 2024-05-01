
using Novera.Resources.Strings;
using Novera.Source.Model.Language;
using Novera.Source.Pages.Common.ContactDetail;
using Novera.Source.Pages.Common.Login;
using Novera.Source.Utility;
using System.Globalization;
using System.Text.Json.Serialization;

namespace Novera.Source.Pages.Common.LanguageSelection;

public partial class LanguageSelectionPage : ContentPage
{
    public LanguageSelectionPage()
    {
        InitializeComponent();
    }

    private void BackBtnClicked(object sender, EventArgs e)
    {
        Shell.Current.Navigation.PopAsync();
    }

    private void OnNextClicked(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync(nameof(LoginPage));
    }

    private void OnCollectionViewSelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        // Check if an item is actually selected
        if (e.CurrentSelection.Count > 0)
        {
            string lang_code = (e.CurrentSelection.FirstOrDefault() as LanguageModel)?.languageCode;
            if(!string.IsNullOrEmpty(lang_code))
            {
                //Translator.Instance.CultureInfo = new CultureInfo(lang_code);
                //Translator.Instance.OnPropertyChanged();

                language.Culture = new System.Globalization.CultureInfo(lang_code);
                (App.Current as App).MainPage = new AppShell();

            }
        }
    }
}