public class OpportunityMainClass 
{
public static void opportunityinsert(list<opportunity> newList)
{
    set<id> accid=new set<id>();
    for(opportunity opp:newList)
    {
        accid.add(opp.AccountId);
    }
    updateaccount(accid);
}
public static void opportunityupdate(list<opportunity> newList,map<id,opportunity> oldlist)
{
    set<id> accid=new set<id>();
    for(opportunity opp:newList)
    {
        if(opp.Amount!=oldlist.get(opp.Id).Amount){
        accid.add(opp.AccountId);
        }
    }
    updateaccount(accid);
}
 public static void updateaccount(set<id> accid)
{
    list<account> acclist =new list<account>();
    map<id,decimal> oppsumamount=new map<id,decimal>();
    for(opportunity opp:[select accountid,amount from opportunity where accountid in :accid])
    {
        if(oppsumamount.containskey(opp.AccountId))
        {
            oppsumamount.put(opp.AccountId,oppsumamount.get(opp.AccountId)+opp.Amount);
            system.debug(oppsumamount);
        }
        else
        {
           oppsumamount.put(opp.AccountId,opp.Amount);
            system.debug(oppsumamount);
        }
    }
    for(id accid1:oppsumamount.keyset())
    {
        account newacc= new account();
        newacc.Id=accid1;
		newacc.OppAmount__c=oppsumamount.get(accid1);
        acclist.add(newacc);
        system.debug(newacc);
    }
    update acclist;
}
public static void OppAmountCommonMethod(list<opportunity>opplist)
{
set<id> oppAccountId= new set<id>();
for(Opportunity opp:opplist)
{
if(opp.Amount!=null&&opp.Accountid!=null)
{
oppAccountId.add(opp.Accountid);
}
}
list<account>accountoUpdate=new list<account>();
for(AggregateResult Ag:[select AccountId,sum(Amount) oppsum from Opportunity where AccountId in:oppAccountId group by AccountId])
{
Account acc=new Account();
acc.id=(id) ag.get('AccountId');
acc.OppAmount__c=(integer) ag.get('oppsum');
accountoUpdate.add(acc);
}

update accountoUpdate;
}
}