using Novera.Source.ViewModel.Document;

namespace Novera.Source.Pages.Crm.Document;

public partial class DocumentPage : ContentPage
{
    public DocumentPage()
    {
        InitializeComponent();
        BindingContext = new DocumentViewModel(Navigation);
    }
    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    private void DocumentRefreshBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    private void DocumentDeleteBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    private void AddDocumentClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new UploadDocumentPage());
    }

}