public class getContactMailid {
    public static set<string> contactmails()
    {	
        set<string> str=new set<string>();
        for(contact c :[select Email from contact])
        {
		      str.add(c.Email);    
        }
        return str;
    }

}