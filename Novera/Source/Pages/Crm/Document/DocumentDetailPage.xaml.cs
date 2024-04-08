using Novera.Source.Model.Document;
using Novera.Source.ViewModel.Document;

namespace Novera.Source.Pages.Crm.Document;

public partial class DocumentDetailPage : ContentPage
{

    public DocumentDetailPage()
    {

    }

    public DocumentDetailPage(DocumentModel document)
    {
        InitializeComponent();
        BindingContext = new DocumentDetailViewModel(document);
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