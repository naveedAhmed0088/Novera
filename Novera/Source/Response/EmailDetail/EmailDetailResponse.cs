using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Response.EmailDetail
{
    public class Data
    {
        public EmailDetails emailDetails { get; set; }
        public List<Document> documents { get; set; }
    }

    public class Document
    {
        public int docId { get; set; }
        public string documentName { get; set; }
        public string docDetails { get; set; }
        public string docMimeType { get; set; }
        public int size { get; set; }
        public string uid { get; set; }
        public int attachmentNumber { get; set; }
    }

    public class EmailDetails
    {
        public int mailId { get; set; }
        public string sender { get; set; }
        public string senderName { get; set; }
        public string sendTo { get; set; }
        public string subject { get; set; }
        public DateTime received { get; set; }
        public string body_Text { get; set; }
        public bool unread { get; set; }
        public string important { get; set; }
        public string uid { get; set; }
    }

    public class EmailDetailResponse
    {
        public bool success { get; set; }
        public string message { get; set; }
        public Data data { get; set; }
    }


}
