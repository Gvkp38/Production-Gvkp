public class BatchApexOnCases implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        String query = 'SELECT Id FROM Case WHERE Status = \'Working\' OR Status = \'New\'';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, List<sObject> scope) {
        List<Case> casesToUpdate = new List<Case>();
        
        for (sObject obj : scope) {
            Case c = (Case) obj;
            c.Status = 'New';
            casesToUpdate.add(c);
        }
        
        update casesToUpdate;
    }
    
    public void finish(Database.BatchableContext bc) {
        // Perform any post-processing logic here
    }
}