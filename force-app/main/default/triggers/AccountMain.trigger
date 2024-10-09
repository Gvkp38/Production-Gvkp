trigger AccountMain on Account (after insert,after update,before insert) 
{
if(trigger.isafter&&trigger.isinsert)
{
    Accounttriggerclass.createopportunity(trigger.new);
    Accounttriggerclass.createAccount(trigger.new);
}
 if(trigger.isafter&&trigger.isupdate)
{
    Accounttriggerclass.annualRevenueCheck(trigger.new,trigger.oldmap);
}
if(trigger.isinsert&&trigger.isBefore)
{
 Accounttriggerclass.checkForDuplicateAccounts(trigger.new);   
}
    if(!(trigger.isinsert))
   {system.debug('its thre that you found it out');}
}