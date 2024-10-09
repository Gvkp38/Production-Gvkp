public class AccountUpdate {
    public static void coninsertundeletedelete(list<contact> newcon)
    {
        set<id> accid=new set<id>();
        for(contact con:newcon)
        {
            accid.add(con.AccountId);
        }
    }
    public static void conupdate(list<contact> newcon,map<id,contact> oldcon)
    {
        set<id> accid=new set<id>();
        for(contact con:newcon)
        {
            if(oldcon.get(con.Id).AccountId==null ||con.AccountId!=null||con.AccountId!=oldcon.get(con.Id).AccountId)
            {
                accid.add(con.AccountId);
            }
        }
    }
    public static void updateaccount(set<id> accid)
    {
        list<aggregateresult> accaggrigate = new list<aggregateresult>();
        map<id,integer> accconmap =new map<id,integer>();
        list<account> acclist=new list<account>();
        accaggrigate=[select accountid,count(id)contactcount from contact where accountid in :accid group by accountid];
        for(aggregateresult ar:accaggrigate)
        {
            accconmap.put((id) ar.get('accountid'),(integer) ar.get('contactcount'));
            system.debug(ar);
        }
        for(id aid:accconmap.keyset())
        {
            account newacc=new account();
            newacc.Id=aid;
            newacc.Contact_Count__c=accconmap.get(aid);
            acclist.add(newacc);
        }
        update acclist;
    }

}