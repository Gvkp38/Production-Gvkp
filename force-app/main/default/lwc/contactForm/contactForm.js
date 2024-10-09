import { LightningElement } from 'lwc';
import insertContact from '@salesforce/apex/ContactController.insertContact';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class ContactForm extends LightningElement {

    handleSave()
    {
        let fname=this.refs.fn.value;
        let lname=this.refs.ln.value;
        let email=this.refs.em.value;

        insertContact({"cfname":fname,"clname":lname,"cemail":email}).then(result=>{
            let ev=new ShowToastEvent({title:"Database Alert",message:result,variant:"success"});
            this.dispatchEvent(ev);
            this.refs.fn.value="";
            this.refs.ln.value="";
            this.refs.em.value="";
        }).catch(error=>{
            let ev=new ShowToastEvent({title:"Database Alert",message:error.body.message,variant:"error"});
            this.dispatchEvent(ev);
        });
    }

}