using Novera.Source.Model.Note;
using Novera.Source.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.ViewModel.Note
{
    public partial class NoteViewModel : BaseViewModel
    {
        public NoteViewModel()
        {
            this.Notes = new ObservableCollection<NoteModel>()
            {
                new NoteModel() { Name = "Robin Sharma", Title = "The Last 6h [The Circle of Legends]", Folder = "BISB The British Internations"},
                new NoteModel() { Name = "Charlie Thompson", Title = "Get inspired by these top creatives", Folder = "BISB The British Internations"},
                new NoteModel() { Name = "Morgan Cook", Title = "Optimizing .NET MAUI Apps & Libraries with… the Linker", Folder = "BISB The British Internations"},
                new NoteModel() { Name = "Hank Baldwin", Title = "Request Time Off - Successfully Completed", Folder = "BISB The British Internations"},
                new NoteModel() { Name = "Emanuel Jacobs", Title = "Release Notes", Folder = "BISB The British Internations"},
                new NoteModel() { Name = "Kenzie Ryan", Title = "New recommendations in Graphic Design and Interaction", Folder = "BISB The British Internations"},
                new NoteModel() { Name = "UX Collective", Title = "The UX Collective Newsletter", Folder = "BISB The British Internations"},
                new NoteModel() { Name = "Sofie Leach", Title = "Design the new website", Folder = "BISB The British Internations"},
                new NoteModel() { Name = "John Doe", Title = "Planning meeting", Folder = "BISB The British Internations"},
                new NoteModel() { Name = "James Fernandez", Title = "Request summer vacation - approved", Folder = "BISB The British Internations"},
             };
        }


        public ObservableCollection<NoteModel> Notes { get; set; }
    }
}
