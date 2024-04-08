using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.Input;
using Novera.Source.Model.Document;
using Novera.Source.Pages.Crm.Document;

namespace Novera.Source.ViewModel.Document
{
    public partial class DocumentViewModel : BaseViewModel
    {
        INavigation navigation;
        public DocumentViewModel(INavigation navigation)
        {
            this.navigation = navigation;
            this.docuemntList = new ObservableCollection<DocumentModel>()
            {
                new DocumentModel() { Name = "Invoices", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago"},
                new DocumentModel() { Name = "Payments & Receipts", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago" },
                new DocumentModel() { Name = "Bank Statements", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago"},
                new DocumentModel() { Name = "Payroll", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago"},
                new DocumentModel() { Name = "Other", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago"},
             };
        }

        public ObservableCollection<DocumentModel> docuemntList { get; set; }
      
        [RelayCommand]
        public void DocumentRowClick(DocumentModel document)
        {
            navigation.PushAsync(new DocumentDetailPage(document));
        }
    }
}
