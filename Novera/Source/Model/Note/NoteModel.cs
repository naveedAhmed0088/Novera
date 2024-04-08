using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Model.Note
{
    public class NoteModel
    {
        public string Folder { get; set; }
        public string Title { get; set; }
        public string Name { get; set; }
        public int  Visibility { get; set; }
        public DateTimeOffset Date { get; set; }

    }
}
