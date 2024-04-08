
using Novera.Source.Model.SupportTicket;
using System.Collections.ObjectModel;

namespace Novera.Source.ViewModel.SupportTicket
{
    public partial class ModuleTypeViewModel : BaseViewModel
    {
        public ModuleTypeViewModel()
        {
            this.ModuleTypeList = new ObservableCollection<ModuleTypeModel>()
            {
                new ModuleTypeModel() { Name = "Robin Sharma", Population = "The Last 6h [The Circle of Legends]", Folder = "BISB The British Internations"},
                new ModuleTypeModel() { Name = "Charlie Thompson", Population = "Get inspired by these top creatives", Folder = "BISB The British Internations"},
                new ModuleTypeModel() { Name = "Morgan Cook", Population = "Optimizing .NET MAUI Apps & Libraries with… the Linker", Folder = "BISB The British Internations"},
                new ModuleTypeModel() { Name = "Hank Baldwin", Population = "Request Time Off - Successfully Completed", Folder = "BISB The British Internations"},
                new ModuleTypeModel() { Name = "Emanuel Jacobs", Population = "Release Notes", Folder = "BISB The British Internations"},
                new ModuleTypeModel() { Name = "Kenzie Ryan", Population = "New recommendations in Graphic Design and Interaction", Folder = "BISB The British Internations"},
                new ModuleTypeModel() { Name = "UX Collective", Population = "The UX Collective Newsletter", Folder = "BISB The British Internations"},
                new ModuleTypeModel() { Name = "Sofie Leach", Population = "Design the new website", Folder = "BISB The British Internations"},
                new ModuleTypeModel() { Name = "John Doe", Population = "Planning meeting", Folder = "BISB The British Internations"},
                new ModuleTypeModel() { Name = "James Fernandez", Population = "Request summer vacation - approved", Folder = "BISB The British Internations"},
             };

        }

        public ObservableCollection<ModuleTypeModel> ModuleTypeList { get; set; }
    }
}
