public class Quableapexclassonaccount implements Queueable
{
    public void execute(queueablecontext qc){
        BatchApexP1 batchable= new BatchApexP1();
database.executeBatch(batchable);
    }
}