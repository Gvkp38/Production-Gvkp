public class APX_Account_creation_retrive {
@Auraenabled
public static string accountCreate(Account a)
{
    string returnv;
    try
    {
       insert a;
       returnv = a.Id;
    }
    catch(exception e)
    {
       returnv='Faild to create Account'; 
    }
    return returnv;
}

    
@Auraenabled
public static list<account> accreturn(id abc)
{
    list<account> xyz=[select Name,Phone,Site,BillingAddress from account where id= :abc];
    return xyz;
}
}