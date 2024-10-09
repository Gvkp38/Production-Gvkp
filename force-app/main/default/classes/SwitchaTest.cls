@isTest
public class SwitchaTest {
    @isTest
    static void test1()
    {
        integer r=switcha.switchtest(1);
       System.assertEquals(2,r);
        integer t=switcha.switchtest(2);
       System.assertEquals(6,t);
        integer e=switcha.switchtest(5);
       System.assertEquals(0,e);
    }

}