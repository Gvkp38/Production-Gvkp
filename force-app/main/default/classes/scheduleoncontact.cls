public class scheduleoncontact implements schedulable
{
public void execute(SchedulableContext sc)
{
batchoncontact batchable= new batchoncontact();
database.executeBatch(batchable);
}
}