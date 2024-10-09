import { LightningElement } from 'lwc';

export default class Lwc_buttoneventChild extends LightningElement 
{
    increase(event)
    {
        const evt1=new CustomEvent('inc');
        this.dispatchEvent(evt1);
    }
    decrease(event)
    {
        
        this.dispatchEvent(new CustomEvent('dec'));
    }
}