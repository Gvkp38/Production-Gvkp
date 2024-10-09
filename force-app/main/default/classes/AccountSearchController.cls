public class AccountSearchController {
    
    @AuraEnabled
    public static list<account> accountSearch(string ss)
    {
        string query='select Name,AccountNumber,Site,Phone,OwnerId from Account where Name like \'%'+ss+'%\'';
        list<account> searchReult=database.query(query);
        return searchReult;
    }

}