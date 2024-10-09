trigger newcontact on Account (after insert) 
{
map<id,Account> ac1=trigger.newMap;
set<id> aid = ac1.keyset();
Contact_Creationpostaccount.contactcreation(aid);
}