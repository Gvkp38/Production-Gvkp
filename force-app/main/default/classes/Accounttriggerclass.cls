public class Accounttriggerclass {
    public static void createopportunity(list<account> newacc)
    {
       list<opportunity> newopp=new list<opportunity>();
       list<account> newacctoupdate=new list<account>();
       map<id,id> accopp=new map<id,id>();
        for(account acc:newacc)
        {
            opportunity opp = new opportunity();
            opp.Name=acc.Name;
            opp.CloseDate=system.today();
            opp.StageName='Prospecting';
            opp.AccountId=acc.Id;
            newopp.add(opp);
        }
        insert newopp;
        for(opportunity opp:newopp)
        {
            accopp.put(opp.accountid,opp.Id);
        }
        for(account acc:newacc)
        {	
            account acc1= new account();
            acc1.Client_Opportunity__c=accopp.get(acc.Id);
            acc1.Id=acc.Id;
            newacctoupdate.add(acc1);
        }
        update newacctoupdate;
    }
    public static void annualRevenueCheck(list<account> nacc,map<id,account> oac)
    {	
        
        set<id> uid=new set<id>();
        list<messaging.Email> se= new list<messaging.Email>();
        
        for(account ea:nacc)
        {
          if(oac.get(ea.Id).AnnualRevenue==null && ea.AnnualRevenue>50000 ||
             (ea.AnnualRevenue>50000 && ea.AnnualRevenue!=oac.get(ea.Id).AnnualRevenue && oac.get(ea.Id).AnnualRevenue<50000)&&
             (ea.CreatedDate.date().daysbetween(system.today())<30))
          {
              uid.add(ea.OwnerId);
          }
        }
        if(!uid.isempty()){
        list<user> userlist=new list<user>();
        map<id,user> userdetais=new map<id,user>();
        userlist=[select id,Email,name from user where id in :uid];
        for(user eu:userlist)
        {
            userdetais.put(eu.Id,eu);
        }
        for(account ea:nacc)
        {
        messaging.singleemailmessage m1= new messaging.singleemailmessage();
        list<string> tad= new list<string>{userdetais.get(ea.OwnerId).Email};
        //list<string> cad= new list<string>{'gvkp38@gmail.com'};
        m1.setToAddresses(tad);      
        //m1.setccaddresses(cad);
        m1.setSubject(ea.Name+' Annual Revenue Exceeds 50K ');
        m1.setPlainTextBody('Dear '+userdetais.get(ea.OwnerId).name+'\n\n the revenue for'+ea.Name+'is grater than 50');
        se.add(m1);
        }
            messaging.sendEmail(se);
        }
    }
     public static void createAccount(list<account>newacc)
        {
          list<contact> newcontact=new list<contact>();
          list<account> accounttoupdate=new list<account>();
          map<id,id>conaccmap=new map<id,id>();
          for(account acc:newacc)
          {
            contact tempcontact=new contact();
              tempcontact.LastName=acc.Name;
              tempcontact.AccountId=acc.Id;
              newcontact.add(tempcontact);
          }
          insert newcontact;
            for(contact con:newcontact)
            {
               conaccmap.put(con.AccountId,con.Id); 
            }
            for(account acc:newacc)
            {
                account newacc1= new account();
                newacc1.Id=acc.Id;
                newacc1.Client_Contact__c=conaccmap.get(acc.Id);
                accounttoupdate.add(newacc1);
                system.debug(accounttoupdate);
            }
            update accounttoupdate;
        }
    
 public static void checkForDuplicateAccounts(List<Account> newAccounts) {
    Set<String> accountNames = new Set<String>();
    for (Account acc : newAccounts) {
        accountNames.add(acc.Name);
    }
   
     
    Set<String> existingAccountNames = new Set<String>();
    for (Account acc : [SELECT Name FROM Account WHERE Name IN :accountNames]) {
        existingAccountNames.add(acc.Name);
    }
    
    for (Account acc : newAccounts) {
        if (existingAccountNames.contains(acc.Name)) {
            acc.addError('An account with this name already exists. Please choose a different name.');
        }
    }
}

}