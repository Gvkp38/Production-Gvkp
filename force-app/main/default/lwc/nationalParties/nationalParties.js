import { LightningElement,wire } from 'lwc';
import ichannel from '@salesforce/messageChannel/InfoChannel__c';
import { publish,MessageContext } from 'lightning/messageService';
export default class NationalParties extends LightningElement {

    @wire(MessageContext) mcon;

    handleClick(event)
    {
        let pname = event.target.name;
        const infodata = {info:pname};
        publish(this.mcon,ichannel,infodata);
    }

}