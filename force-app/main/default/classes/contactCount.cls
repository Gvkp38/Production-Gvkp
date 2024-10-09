public class contactCount{
public static void contactupdateonaccount(list<contact> newcon)
{
set<id> accid=new set<id>();
for(contact con:newcon)
{
accid.add(con.accountId);
}

list<account> accounttoupdate= new list<account>();
list<AggregateResult> contactCount= new list<AggregateResult> ();
contactCount=[select count(id)nocount,accountId from contact where accountid in:accid group by accountid];
for(AggregateResult ag:contactCount)
{
account a= new account();
a.id=(id) ag.get('accountId');
//a.contactCount=(integer) ag.get('nocount');
accounttoupdate.add(a);
}

update(accounttoupdate);
}

}