trigger taskMain on Task (before insert,before delete) 
{
    if(trigger.isbefore&& trigger.isdelete)
    {
        TaskTriggerClass.checkUserInfo(trigger.old);
    }

}