public class bringAccount 
{
@AuraEnabled(cacheable=true)
 public static list<account> acclist()
 {
    list<account> alist=[select Name,Phone,Rating from account ORDER BY name ASC];
    return alist;
 }   
}