@istest
private class accountmaintriggertest {
    @istest
    private static void accountconcreate()
    {
        list<account> acc=new list <account>();
        list<contact> acon=new list<contact>();
        for(integer i=0;i<10;i++)
        {
            account a=new account();
            a.name='test'+i;
            a.Active__c='true';
            a.Account_Auto_Num__c='7032545492';
            acc.add(a);
        }
        insert acc;
        for(account a:acc)
        {
            contact c=new contact();
            c.LastName='test';
            c.AccountId=a.Id;
            acon.add(c);
        }
        insert acon;
        delete acc[0];
    }

}