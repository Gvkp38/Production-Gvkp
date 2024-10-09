public class EMail
{ 
    public string toa {set; get;}
    public string ccad {get;set;}
    public string sub {get;set;}
    public string body {get;set;}
   public void sendmsg()
    {
        Messaging.singleemailmessage m1=new Messaging.singleemailmessage();
        list<string> tad= new list<string>{toa};
        list<string> cad= new list<string>{ccad};

m1.setToAddresses(tad);      
m1.setccaddresses(cad);
m1.setSubject(sub);
m1.setPlainTextBody(body);
list<messaging.Email> se= new list<messaging.Email>{m1};
messaging.sendEmail(se);
    }

}