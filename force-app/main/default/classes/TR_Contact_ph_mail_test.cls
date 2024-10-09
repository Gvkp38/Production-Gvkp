@istest
private class TR_Contact_ph_mail_test {
    //test1: This is to test if a phone number is auto updating 
    @istest
    private static void test1()
    {
        contact test1=new contact();
        test1.LastName='test1';
        insert test1;
        contact c=[select phone from contact where id=:test1.Id];
        system.assertNotEquals('9999', c.Phone);
    }
}