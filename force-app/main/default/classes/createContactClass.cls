public class createContactClass {
       public void method1(List<Account> newList,List<Account> oldList){
             system.debug('Is trigger executing'+trigger.isexecuting);
                                            if(trigger.isexecuting){ // Checking If the current context for the apex code is a trigger.
                 for(Account newAcc:newList){
                     for(Account oldAcc:oldList){
                         if(newAcc.id==oldAcc.id){
                             if(newAcc.phone!=oldAcc.phone){
                                 newAcc.Phone_Number_Changed__c=True;
                             }
                         }
                     }
                 }
             }
       }
}