trigger TR_Lead on Lead (before insert) 
{
	List<Lead> L = trigger.new;
    CLTR_Lead_CloseConvert.Method1(L);
    
}