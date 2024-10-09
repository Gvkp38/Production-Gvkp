@RestResource(urlMapping='/Accountmgmt/')
global class Accountmgmt {
    @httpGet
    global static Accountwrapper getTopAccounts()
    {
        Map<string,string> paraMap=RestContext.request.params;
        set<id> accId= new set<id>();
        string accindustry=paraMap.get('Industry');
        Accountwrapper awrap=new Accountwrapper();
        list<account> topaccounts=[select id,name,Industry,AnnualRevenue from account where AnnualRevenue != null and Industry=:accindustry order by AnnualRevenue limit 10];
        for(Account Acc:topaccounts)
        {
            accId.add(acc.id);
        }
        awrap.Acclist=topaccounts;
        
        list<case> caselist=[select Subject,Description,Status,Priority from case where AccountId in :accId];
        list<contact> contactlist=[select Name,Phone,Email from contact where AccountId in :accId];
        awrap.Caselist=caselist;
        awrap.conlist=contactlist;
        return awrap;
    }
    
    @httpPost
    global static string createAccount(string AccName,string AccPhone,string AccIndistry)
    {
        Account Acc= new Account();
       acc.Name=AccName;
        acc.Phone=AccPhone;
        acc.Industry=AccIndistry;
        try{
            insert acc;
            return 'Account creation successfull with id'+acc.Id;
        }
        catch(exception e)
        {
            return e.getMessage();
        }
    }
    
    global class Accountwrapper{
        global list<account> Acclist;
        global list<Case> Caselist;
        global list<Contact> conlist;
    }

}