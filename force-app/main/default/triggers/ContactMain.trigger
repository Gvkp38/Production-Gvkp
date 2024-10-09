trigger ContactMain on Contact (before update,before insert,after insert,after update,after delete,after undelete){
    if(trigger.isbefore){
		//ContactDuplicateSearch.checkMailPhone(trigger.new);
        if(trigger.isinsert || trigger.isupdate)
        {
            Contacttriggerclass.primaryContactCheck(trigger.new,trigger.oldmap);
        }
    }
    if(trigger.isafter)
    {
        if(trigger.isinsert || trigger.isundelete)
        {
            AccountUpdate.coninsertundeletedelete(trigger.new);
        }
        if(trigger.isupdate)
        {
          //  AccountUpdate.conupdate(trigger.new,trigger.oldmap);
        }
        if(trigger.isdelete)
        {
            AccountUpdate.coninsertundeletedelete(trigger.old);
        }    
    }
}