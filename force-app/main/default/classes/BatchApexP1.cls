public class BatchApexP1 implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext bc) {
        String query = 'SELECT Id,name FROM Account where name like \'%'+'Batch'+'%\'';
        return Database.getQueryLocator(query);
    }

    public static void execute(Database.BatchableContext bc, List<sObject> scope) {
        List<Account> accountsToUpdate = new List<Account>();
		string word='Batch';
        for (sObject obj1 : scope) {
            Account acc = (Account) obj1;
            acc.Name = acc.Name.replace(word,'');
            acc.CreatedDate__c=date.today();
            accountsToUpdate.add(acc);
        }

        update accountsToUpdate;
    }

    public void finish(Database.BatchableContext bc) {
        asyncApexJob ac=[select status from asyncApexJob where id=:bc.getJobId()];
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        list<string> toad= new list<string>{'gvkp38@gmail.com'};
       msg.setToAddresses(toad);
        msg.setSubject('Status of batch job on account');
        msg.setPlainTextBody('The status of this job is '+ac.Status+' with the Number of error '+ac.NumberOfErrors+'. The error message is'+ac.ExtendedStatus);
        list<Messaging.Email> m1= new list<Messaging.Email>{msg};
        messaging.sendEmail(m1);
    }
}