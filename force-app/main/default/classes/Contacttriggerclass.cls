public class Contacttriggerclass {
    public static void primaryContactCheck(list<contact> newcontact,map<id,contact> oldContact)
    {
        set<id> accid = new set<id>();
        if(oldContact==null)
        {
        for(contact ec:newcontact){
            if(ec.AccountId != null && ec.Primary_Contact__c==true){
              accid.add(ec.AccountId);
            } 
            }
        }
        if(oldContact!=null)
        {
            for(contact ec:newcontact){
                if(oldContact.get(ec.Id).AccountId!= ec.AccountId && ec.Primary_Contact__c==true || ec.Primary_Contact__c==true && oldContact.get(ec.Id).Primary_Contact__c==false && ec.AccountId!=null)
                {
                    accid.add(ec.AccountId);
                }
            }
        }
        set<id> accountidwithprimarycontact = new set<id>();
        for(contact con:[select accountid from contact where accountid in :accid and Primary_Contact__c= true])
        {
            accountidwithprimarycontact.add(con.AccountId);
        }
        for(contact con:newcontact)
        {
            if(accountidwithprimarycontact.contains(con.AccountId))
            {
                con.adderror('Already there is an existing primary contact for this account, you can not add it again');
            }
        }
    }
}