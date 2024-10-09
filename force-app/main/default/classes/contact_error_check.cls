public class contact_error_check 
{

    public static void mail_Phone(list<Contact> c,list<Contact> oc)
    {
        map<id,contact> oldcontacts= new map<id,contact>(oc);
        for(contact newcontact:c)
        {
            if(oldcontacts.containsKey(newcontact.id))
            {
                contact oldcontact=oldcontacts.get(newcontact.id);
                
                 if(oldcontact.Phone!=null && oldcontact.Phone!=newcontact.Phone)
                  {
                      newcontact.Phone.Adderror('Naa Naa You can\'t Edit maaa');
                  }
                  if(oldcontact.Email!=null && oldcontact.Email!='no@mail.com' && oldcontact.Email!=newcontact.Email)
                  {
                      newcontact.Email.adderror('What ma you can\'t edit');
                  }
            }
        }
    }
}