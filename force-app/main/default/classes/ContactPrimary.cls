public class ContactPrimary {
    public static void accountFilter(list<Contact> clist)
    {
        set<id> paccid= new set<id>();
        set<id> accid=new set<id>();
        for(contact con:clist)
        {   
            if(con.AccountId!=null){
            paccid.add(con.AccountId);}
        }
        for(contact con:[select Name,AccountId from Contact where Primary_Contact__c = TRUE and AccountId in :paccid])
        {
            accid.add(con.AccountId);
            System.debug(con);
        }
        for(contact con:clist)
        {
            if(accid.contains(con.AccountId))
            {
               con.Primary_Contact__c.adderror('No bro you cannot add another primary contact');
            }
        }
    }
    public static void updatePrimary(list<contact>newCon,map<id,contact>oldcon)
    {   
        set<id> paccid= new set<id>();
        set<id> accid=new set<id>();
        for(contact con:newCon)
        {
            contact oldcontact=oldcon.get(con.id);
            if(con.Primary_Contact__c==true && oldcontact.Primary_Contact__c==false)
            {
                if(con.AccountId!=null){
                paccid.add(con.AccountId);}
                system.debug(con);
            }
        }
        for(contact con:[select Name,AccountId from Contact where Primary_Contact__c = TRUE and AccountId in :paccid])
        {
            accid.add(con.AccountId);
            System.debug(con);
        }
        for(contact con:newCon)
        {
            if(accid.contains(con.AccountId))
            {
               con.Primary_Contact__c.adderror('No bro you cannot add another primary contact');
            }
        }
    }
}