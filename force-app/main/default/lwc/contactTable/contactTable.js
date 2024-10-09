import { LightningElement,api } from 'lwc';
export default class ContactTable extends LightningElement {
@api conList;
handleClick(event)
{
const trRef=event.currentTarget;
//get the custom attribute data-sid value
const conId=trRef.getAttribute("data-sid")
const evt= new CustomEvent("tileevent",{detail:{conId}});
    this.dispatchEvent(evt);
}
}