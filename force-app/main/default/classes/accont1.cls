public class accont1{

@auraEnabled(cacheable=true)
public static list<account> accountcall(list<id> aacid)
{
list<account> acclist=new list<account>();
acclist=[select name,phone from account];
return acclist;
}
}