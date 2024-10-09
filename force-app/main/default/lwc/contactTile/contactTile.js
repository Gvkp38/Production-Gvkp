import { LightningElement,api } from 'lwc';
export default class ContactTile extends LightningElement {
@api contact;
handleclick()
{
    const evt= new CustomEvent("tileevent",{bubbles:true,composed:true ,detail:{conId:this.contact.Id}});
    this.dispatchEvent(evt);

}

}