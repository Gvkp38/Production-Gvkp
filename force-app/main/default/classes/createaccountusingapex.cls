public class createaccountusingapex {
   @InvocableMethod(callout=true label='create account')
   public static list<id> createaccount(list<account> accountlist)
   {	
       list<id> accid=new list<id>();
      
      database.saveResult[] result=database.insert(accountlist);
       
       return accid;
   }

}