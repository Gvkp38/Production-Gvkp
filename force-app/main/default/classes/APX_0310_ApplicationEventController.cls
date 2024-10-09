public class APX_0310_ApplicationEventController {
    
@AuraEnabled
public static string accountserch(string Name, string type)
{
    string rtn;
    list<account> acc=[select ID from account where Name= :Name and Site= :type];
    if(acc.size()>0)
    {
        rtn=acc[0].id;
    }
    else
    {
        rtn='error';
    }
    return rtn;
}

@AuraEnabled
public static list<contact> contactreturn(id str)
{
    list<contact> cl=[select Name,Phone,Email from contact where AccountId= :str];
    return cl;
}

@AuraEnabled
public static list<Opportunity> Opportunitysearch(id str)
{
    list<Opportunity> opp=[select Name,Amount,CloseDate from Opportunity where AccountId= :str];
    return opp;
}
}