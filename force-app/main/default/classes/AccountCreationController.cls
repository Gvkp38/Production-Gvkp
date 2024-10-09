public class AccountCreationController {
    
    @AuraEnabled
    public static string createAccount(string name,string industry,string phone)
    { 	string returnvalue;
        try{
         account acc= new account();
        acc.Name = name;
        acc.Industry = industry;
        acc.Phone = phone;
        insert acc;
        returnvalue='account create with'+acc.Id;
        }
        catch(Exception e)
        {
        returnvalue='Error '+e.getMessage();
        }
     return returnvalue;
    }

}