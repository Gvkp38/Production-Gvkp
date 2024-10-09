public class playwithnum 

{ 
    
    public void test( integer X){
        system.debug(x);
    }
    //public integer a;
    public void returnodd1(integer a)
    {
        list <integer> ab=new list <integer>();
        integer temp=0;
        while(temp<=a){
            if(math.mod(temp,2)!=0){
                ab.add(temp);
            }
            temp+=1;
        }
        system.debug(' the given odd num are '+ab);
    }
    
      public void returneven(integer a)
    {
        list <integer> ab=new list <integer>();
        integer temp=0;
        while(temp<=a){
            if(math.mod(temp,2)==0){
                ab.add(temp);
            }
            temp+=1;
        }
        system.debug(' the given even num are '+ab);
    }
    
}