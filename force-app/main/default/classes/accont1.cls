public class accont1{
//Adding merges
//adding change 2
@auraEnabled(cacheable=true)
public static list<account> accountcall(list<id> aacid)
{
list<account> acclist=new list<account>();
acclist=[select name,phone from account];
return acclist;
}
}