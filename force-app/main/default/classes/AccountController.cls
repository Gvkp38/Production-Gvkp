public with sharing class AccountController {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> displayAccounts(String accname){
        try {
            if(accname=='' || accname==null)
            {
            List<Account> acclist=[select Name,Rating,BillingCity,AnnualRevenue from Account
                                    order by Name];
                        return acclist;
            }
            else {
                String accpattern=accname+'%';
                List<Account> acclist=[select Name,Rating,BillingCity,AnnualRevenue from Account
                                        where Name LIKE :accpattern
                                        order by Name];
                            return acclist;
            }

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}