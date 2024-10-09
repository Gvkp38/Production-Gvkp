import { LightningElement } from 'lwc';
import showContacts from '@salesforce/apex/ContactController.showContacts';
export default class ContactRecords extends LightningElement {

    conlist=[];
    tablecols=[
        {fieldName:"FirstName",label:"Contact FNAME",type:"text"},
        {fieldName:"LastName",label:"Contact LNAME",type:"text"},
        {fieldName:"Email",label:"Contact Email",type:"email"},
        {fieldName:"Phone",label:"Contact Phone",type:"phone"}
    ];
    cmpspinner=false;

    handleShow()
    {
        let cfname=this.refs.FN.value;
        this.cmpspinner=true;
        showContacts({"fname":cfname}).then(result=>{
            this.conlist=result;
            this.cmpspinner=false;
        }).catch(error=>{
            console.log(error.body);
        });
    }

}