public class createAccount {
    @AuraEnabled
    public static string createAccount1(Account acc1)
    {	string response;
     try{
        insert acc1;
        response=acc1.id;
    }
     catch (Exception e)
     {
        response=e.getMessage();
     }
     return(response);
}
}