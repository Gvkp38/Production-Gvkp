public with sharing class ContactController {
    
    @AuraEnabled
    public static List<Contact> showContacts(String fname){
        try {
            if(fname=='' || fname==null)
            {
            List<Contact> clist = [select FirstName,LastName,Email,Phone from Contact order by FirstName];
            return clist;
            }
            else {
                String fnamepattern=fname+'%';
                List<Contact> clist = [select FirstName,LastName,Email,Phone from Contact
                where FirstName LIKE :fnamepattern order by FirstName];

                return clist;
            }

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static string insertContact(String cfname,String clname,String cemail){
        try {
            Contact con=new Contact(FirstName=cfname,LastName=clname,Email=cemail);
            Database.insert(con);
            return 'Contact record created successfully';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}