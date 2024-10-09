public class TaskTriggerClass {
public static void checkUserInfo(list<task> tasklist)    
{
    profile adminprofile=[select id from profile where name='System Administrator' limit 1];
    if(!tasklist.isempty()&&userinfo.getprofileid()!=adminprofile.id)
    {
        for(task t:tasklist)
        {
            t.adderror('this task cannot be deleted, this can be deleted only by system admin');
        }
    }
}
}