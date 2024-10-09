public class createContact {
    @AuraEnabled
    public static string createContact1(string fname, string lname,string accid)
    {
        contact c= new contact();
        c.FirstName=fname;
        c.LastName=lname;
        c.AccountId=accid;
        string response;
        try{
           insert c;
            response=c.Id;
        }
        catch(Exception e)
        {
            response=e.getMessage();
        }
        
        return response;
    }

}