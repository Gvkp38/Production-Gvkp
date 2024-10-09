import { LightningElement } from 'lwc';

export default class Lwc_buttoneventChild extends LightningElement 
{
    //param1;
    increase(event)
    {
        const evt1=new CustomEvent('inc',{detail:'Icreased'});
        this.dispatchEvent(evt1);
    }
    decrease(event)
    {
        
        this.dispatchEvent(new CustomEvent('dec',{detail:'Decreased'}));
    }
}