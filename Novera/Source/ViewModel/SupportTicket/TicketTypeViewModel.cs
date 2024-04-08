using Novera.Source.Model;
using Novera.Source.Model.SupportTicket;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace Novera.Source.ViewModel.SupportTicket
{
    public partial class TicketTypeViewModel : BaseViewModel
    {
        public TicketTypeViewModel()
        {
            this.TicketTypeList = new ObservableCollection<TicketTypeModel>()
            {
                new TicketTypeModel() { Name = "Robin Sharma", Population = "The Last 6h [The Circle of Legends]", Folder = "BISB The British Internations"},
                new TicketTypeModel() { Name = "Charlie Thompson", Population = "Get inspired by these top creatives", Folder = "BISB The British Internations"},
                new TicketTypeModel() { Name = "Morgan Cook", Population = "Optimizing .NET MAUI Apps & Libraries with… the Linker", Folder = "BISB The British Internations"},
                new TicketTypeModel() { Name = "Hank Baldwin", Population = "Request Time Off - Successfully Completed", Folder = "BISB The British Internations"},
                new TicketTypeModel() { Name = "Emanuel Jacobs", Population = "Release Notes", Folder = "BISB The British Internations"},
                new TicketTypeModel() { Name = "Kenzie Ryan", Population = "New recommendations in Graphic Design and Interaction", Folder = "BISB The British Internations"},
                new TicketTypeModel() { Name = "UX Collective", Population = "The UX Collective Newsletter", Folder = "BISB The British Internations"},
                new TicketTypeModel() { Name = "Sofie Leach", Population = "Design the new website", Folder = "BISB The British Internations"},
                new TicketTypeModel() { Name = "John Doe", Population = "Planning meeting", Folder = "BISB The British Internations"},
                new TicketTypeModel() { Name = "James Fernandez", Population = "Request summer vacation - approved", Folder = "BISB The British Internations"},
             };

        }
        public ObservableCollection<TicketTypeModel> TicketTypeList { get; set; }

    }
}
