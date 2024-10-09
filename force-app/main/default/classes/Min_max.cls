public class Min_max {

    public integer num1 {get;set;}
    public integer num2 {get;set;}
    public integer num3 {get;set;}
    public string  choice {get;set;}
    public integer result {get;set;}
    public Account acc;
    public  Min_max (Apexpages.StandardController m){
      acc=(account) m.getRecord(); 
    }
    
    public void saveaccount(){
        if(acc.id!=null)
        {
            update acc;
            Apexpages.Message m= new Apexpages.Message(apexpages.Severity.CONFIRM,'Your account'+acc.id+' is updated');
            apexpages.addMessage(m);
        }
        else{
            insert acc;
            Apexpages.Message m= new Apexpages.Message(apexpages.Severity.CONFIRM,'Your account is created with account id'+acc.id);
            apexpages.addMessage(m);
        }
    }
    
    public void main(){
        if(choice=='min'){
            small();
        }
        else if(choice=='max')
        {
            Large();
        }
        else
        {
            result=0;
        }
    }
 void small()
 {
     if(num1<num2 && num1<num3){
      result=num1;   
     }
     else if(num2<num3&&num2<num1){
         result=num2;
     }
     else{
         result=num3;
     }
 }
     void Large()
 {
     if(num1>num2 && num1>num3){
      result=num1;   
     }
     else if(num2>num3&&num2>num1){
         result=num2;
     }
     else{
         result=num3;
     }
 }
}