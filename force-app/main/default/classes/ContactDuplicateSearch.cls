public class ContactDuplicateSearch {
public static void checkMailPhone(list<contact> contactstoupload)
{
   set<string> nemail=new set<string>();
   set<string> nphone=new set<string>();
    for(contact nc:contactstoupload)
    {
        nemail.add(nc.Email);
        nphone.add(nc.Phone);      
    }
    list<contact> existingcontacts=new list<contact>();
    map<string,string> existingmailphone=new map<string,string>();
    for(contact ec:[select email,phone from contact where (email!=null and email in :nemail) or (phone!=null and phone in :nphone)])
    {
        existingmailphone.put(ec.Email,ec.Phone);
    }
    for(contact con:contactstoupload)
    {
        if((existingmailphone.containskey(con.Email))||(existingmailphone.values().contains(con.Phone)))
        {
            con.adderror('Duplicate Mail or Phone found');
        }
    }
}
}