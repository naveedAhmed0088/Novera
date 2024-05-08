public class Data
{
    public EmailDetails emailDetails { get; set; }
    public List<object> documents { get; set; }
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

