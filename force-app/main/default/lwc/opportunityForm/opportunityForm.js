import { LightningElement } from 'lwc';
import oname from '@salesforce/schema/Opportunity.Name';
import accname from '@salesforce/schema/Opportunity.AccountId';
import ostage from '@salesforce/schema/Opportunity.StageName';
import oamt from '@salesforce/schema/Opportunity.Amount';
import odate from '@salesforce/schema/Opportunity.CloseDate';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class OpportunityForm extends LightningElement {

    oppfields=[oname,accname,ostage,odate,oamt];

    oppform=true;
    msg="";
    sfid="";
    opprecform=false;

    handleSuccess(event)
    {
        let ev=new ShowToastEvent({title:"Opportunity Alert",message:"Opportunity created successfully",
                                        variant:"success"});
            this.dispatchEvent(ev); 
            this.oppform=false;
            this.sfid=event.detail.id;
            this.msg = "Opportunity record created with ID "+event.detail.id;
    }

    handleClick()
    {
        this.opprecform=true;
    }

}