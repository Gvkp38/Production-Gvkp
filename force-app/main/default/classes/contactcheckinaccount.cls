public class contactcheckinaccount
{
    public static void coninacc(list<account> acmap)
    {
        set<id> accid=new set<id>();
        for(contact c:[select name,AccountId from contact where accountid in :acmap])
        {
          accid.add(c.AccountId);
        }
        for(account a:acmap)
            {	
                if(accid.contains(a.Id)){
            a.adderror('cannot delete account, there is an associated contact with it');
                }
        }
    }
}