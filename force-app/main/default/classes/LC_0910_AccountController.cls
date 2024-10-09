public class LC_0910_AccountController {
@auraEnabled
public static string accountcreate(string str1,string str2)
{	string response;
 try{
    account acc= new account();
    acc.name=str1;
    acc.Phone=str2;
   	insert acc;
    response=acc.Id;
 }
 catch(exception e)
 {
     response=e.getMessage();
 }
 
 return response;
}
}