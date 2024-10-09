public class ApexBatch implements database.batchable<sObject>
{
public database.querylocator start(database.batchablecontext bc)
{
   string str='select name,id,phone from account';
    return database.getquerylocator(str);
}
 public void execute(database.batchablecontext bc, list<sObject> so)
 {
     list<Account> acl=new list<account>();
     for(sObject a:so)
     {
         account abc= (account) a;
         abc.Phone='7032545492';
         acl.add(abc);
     }
     update acl;
 }
 public void finish(database.batchablecontext bc)
 {
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