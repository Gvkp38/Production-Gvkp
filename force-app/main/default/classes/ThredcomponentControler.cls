public with sharing class ThredcomponentControler {
    @AuraEnabled(cacheable=true)
   public static String thredmethod(String rId)
   {
    
    system.debug('Successfully called this method'+rId);
    case c= [select threadid__c from case where id=:rId limit 1];
            if (c != null) {
            return c.ThreadId__c;
        } else {
            return null; // Return null if no record is found
        }
    }

     
   
}