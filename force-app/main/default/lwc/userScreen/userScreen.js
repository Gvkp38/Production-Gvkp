import { LightningElement,api } from 'lwc';

export default class UserScreen extends LightningElement {

    @api uname="";

    handleInput(event)
    {
        this.uname = event.target.value;
    }

}