trigger PrimaryContact on Contact (before insert, before update) 
{   
    if(trigger.isBefore&&(trigger.isInsert||trigger.isUpdate)){
    ContactPrimary.accountFilter(trigger.new);
}


    /* if(trigger.isBefore&&trigger.isUpdate)
    {
        ContactPrimary.updatePrimary(trigger.new,trigger.oldMap);
    }*/

}