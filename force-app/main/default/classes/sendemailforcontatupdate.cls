public class sendemailforcontatupdate 
{
    public static void  afterinsert()
    {
        messaging.SingleEmailMessage m1= new messaging.SingleEmailMessage();
        list<string> tomail= new list<string>{'gvkp38@gmail.com'};
        m1.setToAddresses(tomail);
        m1.setSubject('Contact has been inserted');
        m1.setPlainTextBody(' Hi Vasanth, Looks like there is a new contact inserted in your org');
        list<messaging.Email> e1= new list<messaging.Email>{m1};
        messaging.sendEmail(e1);      
    }

    public static void  afterupdate()
    {
        messaging.SingleEmailMessage m1= new messaging.SingleEmailMessage();
        list<string> tomail= new list<string>{'gvkp38@gmail.com'};
        m1.setToAddresses(tomail);
        m1.setSubject('Contact has been updated');
        m1.setPlainTextBody(' Hi Vasanth, Looks like there is a contact update in your org');
        list<messaging.Email> e1= new list<messaging.Email>{m1};
        messaging.sendEmail(e1);      
    }
}