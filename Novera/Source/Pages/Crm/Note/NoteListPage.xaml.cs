using Novera.Source.Pages.Crm.Note.AddNote;
using Novera.Source.Pages.Crm.Note.ViewNote;

namespace Novera.Source.Pages.Crm.Note;

public partial class NoteListPage : ContentPage
{
    public NoteListPage()
    {
        InitializeComponent();
    }

    private void BackBtnClicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    private void AddNoteClicked(object sender, EventArgs e)
    {

        Navigation.PushAsync(new AddNotePage());
    }
    private void ViewNoteTapped(object sender, TappedEventArgs e)
    {
        Navigation.PushAsync(new ViewNotePage());
    }
}