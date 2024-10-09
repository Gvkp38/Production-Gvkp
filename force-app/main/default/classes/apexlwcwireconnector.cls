public with sharing class apexlwcwireconnector {
    @AuraEnabled(cacheable=true)
    public static list<contact> GetrelatedContacts(String accid)
    {
return([select Name,Phone,AccountId from Contact WHERE AccountId=: accid]);
    }
}