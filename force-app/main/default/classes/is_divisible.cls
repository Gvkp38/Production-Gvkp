public Virtual class is_divisible {
    public integer isdivisible(integer x)
    {
       integer i=2;
       while(i<x)
       {
           if(math.mod(x,i)==0)
           {
               return 0;
           }
           i+=1;
       }
        return 1;
    }
}