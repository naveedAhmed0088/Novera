using CommunityToolkit.Mvvm.ComponentModel;
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
    public partial class DocumentDetailViewModel : BaseViewModel
    {

        public DocumentDetailViewModel(DocumentModel document)
        {
            this.document = document;
        }
        public DocumentModel document { get; set; }
    }
}
