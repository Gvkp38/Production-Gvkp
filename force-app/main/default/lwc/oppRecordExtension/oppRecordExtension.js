import { LightningElement,api } from 'lwc';
import showAccountDetails from '@salesforce/apex/OpportunityController.showAccountDetails';

export default class OppRecordExtension extends LightningElement {

    @api recordId;

    oppRec=null;

    connectedCallback()
    {
        showAccountDetails({"oppid":this.recordId}).then(result=>{
            this.oppRec = result;
        }).catch(error =>{
            console.log(error.body.message);
        });
    }

    get recFound()
    {
        return this.oppRec!=null;
    }

}