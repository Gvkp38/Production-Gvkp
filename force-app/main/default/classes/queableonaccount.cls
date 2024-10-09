public class queableonaccount implements queueable
{
    public void  execute(queueablecontext ac){
        BatchApexP1 batchable= new BatchApexP1();
        database.executeBatch(batchable);
    }

}