public class PriorityMap {
	public static map<string,list<account>> prioritymethod(set<id> accid)
    {
        list<account> acclinst=[select rating,id,name,phone from account where id in :accid];
        map<string,list<account>> prioritymap= new map<string,list<account>>();
        for(account acc:acclinst)
        {	
            if(acc.rating!=null){
            if(prioritymap.keyset().contains(acc.Rating))
            {
				list<account> updatealist=prioritymap.get(acc.Rating);  
                updatealist.add(acc);
            }
            else
            {	
                list<account> listupdate=new list<account>();
                listupdate.add(acc);
                prioritymap.put(acc.Rating,listupdate);
            }}
        }
        return(prioritymap);
    }
}