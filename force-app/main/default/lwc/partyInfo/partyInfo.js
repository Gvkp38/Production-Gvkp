import { LightningElement,wire } from 'lwc';
import ichannel from '@salesforce/messageChannel/InfoChannel__c';
import { subscribe,MessageContext } from 'lightning/messageService';
export default class PartyInfo extends LightningElement {

    partyname="";
    partySybmol="";
    @wire(MessageContext) mcon;

    connectedCallback()
    {
        if(this.mcon!=null)
        {
            subscribe(this.mcon,ichannel,(infodata =>{this.processData(infodata)}));
        }
    }

    processData(infodata)
    {
        this.partyname = infodata.info;
        switch(this.partyname)
        {
                case "inc":
                this.partySybmol="Hand";
                break;
                case "bjp":
                this.partySybmol="Lotus";
                break;
                case "aap":
                this.partySybmol="Broom";
                break;
                case "cpi":
                this.partySybmol="Sickle";
                break;
                default:
                    this.partySybmol="None";
                break;
        }
    }

}