public class ContactPhoneUpdate {

    public static void updatePhone(list<account> newaccount,list<account> oldaccount)
    {
        set<string> oldPhoneNum= new set<string>();
        if(!newaccount.isempty()&&!oldaccount.isempty()){
        for(account eachAccount:oldaccount)
        {
                 oldPhoneNum.add(eachAccount.Phone);
        }
        }
            list<contact> contactsToupdate=[select phone,Account.Phone from contact where accountid in :newaccount and Account.Phone NOT IN :oldPhoneNum];
            for(contact c:contactsToupdate)
            {	
                c.Phone=c.Account.Phone;
            }
        if(!contactsToupdate.isempty()){
            update contactsToupdate;}
                //system.debug('igot fired'+contactsToupdate);
          }
        
  }