import { LightningElement } from 'lwc';

export default class Lwc_customeventparent extends LightningElement {
    paramfromchild='default';
    volume=0;
    fireincevent(event)
    {
       if(this.volume<100){
       this.volume=this.volume+1;}
        this.paramfromchild=event.detail;
    }
    firedecevent(event)
    {
        if(this.volume>0){
        this.volume=this.volume-1;}
        this.paramfromchild=event.detail;
    }
}