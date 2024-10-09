public class batch implements database.batchable<sObject> 
{
    public database.querylocator start(database.batchablecontext bc)
    {   
        string q='select name,id from account limit 10';
        return database.getquerylocator(q);
    }
    public void execute(database.batchablecontext bc, list<account> ob)
    {
        for(account a:ob){
            a.name= a.name+'batch edit';
            update a;
        }
        
    }
    
    public void finish(database.batchablecontext bc){
        
    }
}