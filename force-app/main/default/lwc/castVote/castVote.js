import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class CastVote extends LightningElement {

    handleVote()
    {
        let ev=new ShowToastEvent({title:"India Elections",
                                    message:"Thanks for Voting in Elections 2024",
                                    variant:"success"});
            this.dispatchEvent(ev);
    }

}