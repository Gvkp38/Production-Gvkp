trigger CaseMain on Case (after insert) 
{
if(trigger.isafter&&trigger.isinsert)
{
   CaseContactCheck.checkCaseMail(trigger.new);
}
}