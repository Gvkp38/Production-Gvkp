public class Contact_Creationpostaccount {
    public static void contactcreation(set<id> ad1)
    {
        list<account> ac1 =[select Name,Phone from account where account.id in :ad1];
        list<contact> concreate= new list<contact>();
        for(account a1:ac1)
        {
            contact a = new contact();
            a.LastName=a1.Name;
            a.Phone=a1.Phone;
            concreate.add(a);
        }
        insert concreate;
    }

}