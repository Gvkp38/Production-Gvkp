trigger OpportunityMainTrigger on Opportunity (after insert,after update,after delete) 
{
  if(trigger.isafter&&trigger.isinsert)
  {
      OpportunityMainClass.opportunityinsert(trigger.new);
  }
 if(trigger.isafter&&trigger.isupdate)
  {
      OpportunityMainClass.opportunityupdate(trigger.new,trigger.newmap);
  }
  if(trigger.isafter&&trigger.isdelete)
  {
      OpportunityMainClass.opportunityinsert(trigger.old);
  }
  if(trigger.isafter&&trigger.isundelete)
  {
     OpportunityMainClass.opportunityinsert(trigger.new); 
  }

}