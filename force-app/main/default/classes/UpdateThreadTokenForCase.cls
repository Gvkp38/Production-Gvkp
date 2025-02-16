public class UpdateThreadTokenForCase {
@InvocableMethod
  public static List<String> getThreadToken(List<Id> idList) {
    List<String> tokenList = new List<String>();
    for(Id newCaseId : idList){
           String formattedToken = EmailMessages.getFormattedThreadingToken(newCaseId);
           tokenList.add(formattedToken);
    }
    return tokenList;
  }
}