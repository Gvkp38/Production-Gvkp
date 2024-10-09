trigger lastmodifieddate on Account (before update) 
{
for(account acc:trigger.new)
{
    if(trigger.isbefore)
    {
        if(acc.Last_modified_date__c!=system.now())
        {
            acc.Last_modified_date__c=system.now();
        }
    }
}
}