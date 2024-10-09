public class GetrelatedContacts {
    @AuraEnabled
    public static list<contact> givecontacts(string id1)
    {
        list<contact> lc=[select Name,Email,Department from contact where AccountId= :id1];
        
        return lc;
    }

}