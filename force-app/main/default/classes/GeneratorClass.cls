public class GeneratorClass {
    public void generatorMethod()
    {
        system.JsonGenerator jg= JSON.createGenerator(false);
        jg.writestartobject();
        list<account> acc=[select name,Phone from account limit 10];
        for(account ac:acc)
        {	
            jg.writestringfield('Name',ac.Name);
            //if(ac.Phone!=null)
            //{
                jg.writestringfield('Phone',ac.Phone);//}
            //else{jg.writestringfield('Phone','null');}
            
        }
        jg.writeendobject();
        string jsonfil=jg.getasstring();
        system.debug(jsonfil);
    }

}