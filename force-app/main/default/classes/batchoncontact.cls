public class batchoncontact implements Database.Batchable<sObject>
{
    public database.QueryLocator start(database.BatchableContext bc)
    {
        string query='select id from contact where firstname=\'sample\'';
        return database.getQueryLocator(query);
    }
    public void execute(database.BatchableContext bc, list<sObject> result)
    {
        list<contact> contactstoupdate = new list<contact>();
        for(sobject ax:result)
        {
            contact c=(contact) ax;
            c.FirstName='batch';
            contactstoupdate.add(c);
        }
        update contactstoupdate;
    }
    
    public void finish(database.BatchableContext bc)
    {
        messaging.SingleEmailMessage smg= new messaging.SingleEmailMessage();
        list<string> toadd= new list<string>{'gvkp38@gmail.com'};
        smg.setToAddresses(toadd);
        AsyncApexJob ajob= [select Status,NumberOfErrors, createdby.email from AsyncApexJob where id=:bc.getJobId()];
        smg.setSubject('Status of batch created by'+ajob.CreatedBy.Name+' is '+ajob.Status);
        smg.setPlainTextBody('<Hi Vasanth, i hope you are doing good, the batch which was scheduled by '+ajob.createdby.email+' is '+ajob.Status+'. with Number of errors: '+ajob.NumberOfErrors);
        List<Messaging.Email> x= new List<Messaging.Email>{smg};
        messaging.sendEmail(x);       
    }
}