public with sharing class OpportunityController {
    
    @AuraEnabled
    public static List<Opportunity> showRecords(){
        try {
            
            List<Opportunity> opplist = [select Name, StageName, CloseDate, Amount from Opportunity
                                        order by Name];
                                return opplist;

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static Opportunity showAccountDetails(String oppid){
        try {
            
            Opportunity opp=[select Account.Name, Account.AnnualRevenue, Account.BillingCity, Account.BillingState
                                from Opportunity where ID = :oppid];
                        return opp;

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}