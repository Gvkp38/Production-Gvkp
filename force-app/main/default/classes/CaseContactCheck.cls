public class CaseContactCheck {
    public static void checkCaseMail(list<case> caselist)
    {
        set<string> casemail=new set<string>();
        map<string,contact> contactWithMail=new map<string,contact>();
        for(case c:caselist)
        {
            casemail.add(c.SuppliedEmail);
        }
	for(contact con:[select name,id,Email from contact where Email in :casemail])
    {	
        contactWithMail.put(con.Email,con);
    }
        
        for(case c:caselist)
        {
            if(contactWithMail.keyset().contains(c.SuppliedEmail))
            {
                c.ContactId=contactWithMail.get(c.SuppliedEmail).id;
            }
        }
        update caselist;
    }

}