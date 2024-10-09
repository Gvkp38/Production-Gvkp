public class OppurtunityUpdate {
    public static void addValidation(list<Opportunity> opplist)
    {
        for(Opportunity opp:opplist)
        {
            if(opp.StageName=='Closed Won'&&opp.Amount==null)
            {
                opp.adderror('Kindly populate Opportunity Amout before making it as closed won');
            }
            if(opp.TotalOpportunityQuantity<=0)
            {
                opp.adderror('Product quantity can\'t be 0');
            }
            
        }
    }

}