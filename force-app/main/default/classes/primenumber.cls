public class primenumber extends is_divisible
{
public list <integer> abc= new list<integer>();
public void getprime(integer a)
{
    if(a<=1)
    {
        system.debug(' give proper number');
    }
    else if(a==2)
    {
        abc.add(a);
    }
    else
    {
       integer i=2;
        while(i<=a)
        {
            if(isdivisible(i)==1)
            {
                abc.add(i);
            }
        }
    }
 system.debug(abc);   
}
}