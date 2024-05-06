using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Response.CRMPages
{
    public class Datum
    {
        public int mailId { get; set; }
        public object compCode { get; set; }
        public object accountCode { get; set; }
        public object projectId { get; set; }
        public object businessAnalysisItemId { get; set; }
        public string sender { get; set; }
        public object senderCrypt { get; set; }
        public object senderName { get; set; }
        public string sendTo { get; set; }
        public object sendToCrypt { get; set; }
        public string cc { get; set; }
        public object ccCrypt { get; set; }
        public string bcc { get; set; }
        public object bccCrypt { get; set; }
        public object replyTo { get; set; }
        public string subject { get; set; }
        public DateTime received { get; set; }
        public object eMailTypeId { get; set; }
        public string bodyText { get; set; }
        public string bodyHtml { get; set; }
        public object unread { get; set; }
        public string important { get; set; }
        public object uid { get; set; }
        public int userId { get; set; }
        public object accountId { get; set; }
        public object isPublic { get; set; }
        public int folderId { get; set; }
        public object deleteAfterRead { get; set; }
    }

    public class InboxPageResponse
    {
        public bool success { get; set; }
        public string message { get; set; }
        public EmailListData data { get; set; }
    }

    public class EmailListData
    {
        public List<Datum> emails { get; set; }
        public int totalRecords { get; set; }
    }
   
}
