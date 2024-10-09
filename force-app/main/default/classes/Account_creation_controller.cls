public class Account_creation_controller {
    @AuraEnabled
    public static string accoutthroughobject(Account acc)
    {	string returnvalue;
     try{
        	insert acc;
            returnvalue='Account Creation Success with acount ID'+acc.id;
     }
        catch(Exception e)
        {
            returnvalue= 'account Creation faild with error message'+e.getMessage();
        }
     return returnvalue;
    }

}