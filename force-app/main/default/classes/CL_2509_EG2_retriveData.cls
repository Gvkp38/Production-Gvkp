public class CL_2509_EG2_retriveData {
	
    @AuraEnabled
    public static account GiveData()
    {
        Account acc=[select Id,Name,Phone,Industry,Rating from account limit 1];
        return acc;
    }
}