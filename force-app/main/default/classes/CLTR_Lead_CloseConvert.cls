public class CLTR_Lead_CloseConvert 
{
	public static void Method1(List<Lead> L)
    {
        for(Lead EL:L)
        {
            if(EL.Status=='Closed - Converted')
            {
                EL.AddError('not convertable');
            }
        }
    }
}