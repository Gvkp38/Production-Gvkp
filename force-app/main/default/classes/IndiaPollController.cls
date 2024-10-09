public with sharing class IndiaPollController {
    
    @AuraEnabled
    public static List<IndiaPoll__c> showData(){
        try {
            
            List<IndiaPoll__c> ilist=[select Name,IndiaState__r.State_Name__c,Phase_Name__c,Poll_Date__c
                                    from IndiaPoll__c order by Name];
                                return ilist;

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static string deletePoll(String pollid){
        try {

            IndiaPoll__c ip = [select Name from IndiaPoll__c where Id = :pollid];
            String pollname = ip.Name;

            Database.delete(ip);
            return 'Poll Data with number '+pollname+' is been deleted';
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}