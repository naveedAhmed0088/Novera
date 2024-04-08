using Novera.Source.Model.Document;
using Novera.Source.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.ViewModel.Document
{
    public partial class UploadDocumentViewModel : BaseViewModel
    {
        public UploadDocumentViewModel()
        {
            this.UploadedDocumentList = new ObservableCollection<DocumentModel>()
            {
                new DocumentModel() { Name = "Invoices", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago"},
                new DocumentModel() { Name = "Payments & Receipts", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago" },
                new DocumentModel() { Name = "Bank Statements", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago"},
                new DocumentModel() { Name = "Payroll", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago"},
                new DocumentModel() { Name = "Other", Icon="document_folder", Size="3.5 GB",LastUpdateTime="2 hours ago"},
             };
        }

        public ObservableCollection<DocumentModel> UploadedDocumentList { get; set; }
    }
}
