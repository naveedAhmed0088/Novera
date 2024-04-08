using Novera.Source.Model;
using Novera.Source.Model.Invoice;
using Novera.Source.Model.Settings;
using Novera.Source.Model.SupportTicket;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace Novera.Source.ViewModel.Invoice
{
    public partial class InvoiceViewModel : BaseViewModel
    {
        public InvoiceViewModel()
        {
            this.InvoiceList = new ObservableCollection<InvoiceModel>()
            {
                new InvoiceModel() { FullTitle ="Account", NoOfTicket="2" },
                new InvoiceModel() { FullTitle ="Account2", NoOfTicket="20" },
                new InvoiceModel() { FullTitle ="Account3", NoOfTicket="2" },
                new InvoiceModel() { FullTitle ="Account4", NoOfTicket="2" },

             };

        }
        public ObservableCollection<InvoiceModel> InvoiceList { get; set; }

    }
}
