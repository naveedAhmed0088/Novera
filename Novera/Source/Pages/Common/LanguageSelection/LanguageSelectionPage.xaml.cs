
using Novera.Resources.Strings;
using Novera.Source.Model.Language;
using Novera.Source.Pages.Common.ContactDetail;
using Novera.Source.Pages.Common.Login;
using Novera.Source.Utility;
using System.Globalization;
using System.Text.Json.Serialization;

namespace Novera.Source.Pages.Common.LanguageSelection
{
    public partial class LanguageSelectionPage : ContentPage
    {
        public LanguageSelectionPage()
        {
            InitializeComponent();
        }

        // Add the event handler for Frame tap
        private void OnFrameTapped(object sender, EventArgs e)
        {
            // Get the selected item from the BindingContext
            if (sender is VerticalStackLayout frame && frame.BindingContext is LanguageModel selectedItem)
            {
                // Handle the selection here
                string lang_code = selectedItem.languageCode;
                if (!string.IsNullOrEmpty(lang_code))
                {
                    // Change the language and navigate or update UI accordingly
                    language.Culture = new System.Globalization.CultureInfo(lang_code);
                    (App.Current as App).MainPage = new AppShell();
                }
            }
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
            // This method might not be needed if you are handling selection with Frame tap
        }
    }
}