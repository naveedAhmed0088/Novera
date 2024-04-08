using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Model.Emails
{
    public class SentModel
    {
        public string FirstLetter { get; set; }
        public string To { get; set; }
        public string Name { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
        public Color Color { get; set; }
        public bool IsContrastStarIcon { get; set; }
        public string Date { get; set; }
    }
}
