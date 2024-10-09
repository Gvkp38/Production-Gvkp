import { LightningElement } from 'lwc';

export default class LWC_1219_varExample1 extends LightningElement 
{
    name="vasanth";
    age=25;
    dob= new Date();
    callMe()
    {
        this.name="Lokesh";
        this.age=24;
        //this.dob.getDate();    
    }
}