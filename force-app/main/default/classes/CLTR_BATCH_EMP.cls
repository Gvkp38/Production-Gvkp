public class CLTR_BATCH_EMP implements database.Batchable<Sobject>
{
	private set<id> userid;
    public CLTR_BATCH_EMP(set<id> uid)
    {
        this.userid=uid;
    }
    
    public database.QueryLocator start(database.BatchableContext bc)
    {
       string query='select firstname,lastname,email,phone from user where id in :userid';
       return database.getQueryLocator(query);
    }
    public void execute(database.BatchableContext bc,list<Sobject> userl)
    {
        list<employee__c> toinsert=new list<employee__c>();
        
        for(sObject ob:userl)
        {   employee__c element= new employee__c();
            user u=(user) ob;
            element.Full_Name__c=u.firstname+' '+u.LastName;
            element.Phone__c=u.Phone;
            element.Email__c=u.Email;
            toinsert.add(element);
        }
        insert toinsert;
    }
    public void finish(database.BatchableContext bc)
    {
       messaging.SingleEmailMessage sende= new  messaging.SingleEmailMessage();
        list<string> tom=new list<string>{'gvkp38@gmail.com'};
        sende.setToAddresses(tom);
        sende.setSubject('a new user and employee on boarded');
        sende.setPlainTextBody('Hi Vasanth, a new employee has been created by auto trigger rule on user');
        list<messaging.Email> ne= new list<messaging.Email>{sende};
        messaging.sendEmail(ne);
    }
}