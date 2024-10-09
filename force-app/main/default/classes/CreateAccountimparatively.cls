public with sharing class CreateAccountimparatively {
    @AuraEnabled
    
    public static string CreateAccountimparativelymethod(string Aname,string Site1) 
    {   
        string result;
        try {
            Account acc= new Account();
            acc.Name=Aname;
            acc.Site=Site1;
            insert acc;
            result='account creation was sucessfully completed with account id: '+acc.Id;
        } 
        catch (Exception e) {
            result='account creation faild with error: '+e.getMessage();
        }
        return result;
    }
}