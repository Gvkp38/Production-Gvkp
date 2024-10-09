public class OppTriggerHandler {
public static void checkoppstatus(list<opportunity> newopp)
{
    set<id> accid=new set<id>();
    for(opportunity opp:newopp)
    {
        accid.add(opp.AccountId);
    }
  updateaccount(accid);
}
public static void checkUpdateoppStatus(list<opportunity> newopp,map<id,opportunity> oldopp)
{
    set<id> accid=new set<id>();
    for(opportunity opp:newopp)
    {	
        if(opp.StageName!=oldopp.get(opp.id).StageName)
        accid.add(opp.AccountId);
    }
    
   updateaccount(accid); 
}
    public static void updateaccount(set<id> accid)
    {
       list<account> acctoupdate=new list<account>();
           map<id,integer> accmap=new map<id,integer>();
        list<AggregateResult> aggres=new list<AggregateResult>();
        aggres=[select accountid,count(id) oppcount from opportunity  where accountid in :accid and StageName!='Closed Won' group by accountid];
        for(AggregateResult ar:aggres)
        {
            accmap.put((id) ar.get('accountid'),(integer) ar.get('oppcount'));
        }
        for(id eachaccid:accmap.keyset())
        {	
            if(accmap.get(eachaccid)>0)
            {
            account acc= new account();
            acc.Id=eachaccid;
            acc.Active__c='yes';
            acctoupdate.add(acc); 
            }
            else
            {
              account acc= new account();
            	acc.Id=eachaccid;
                acc.Active__c='No';
                acctoupdate.add(acc);
            }
        }
        update acctoupdate;
    }
}