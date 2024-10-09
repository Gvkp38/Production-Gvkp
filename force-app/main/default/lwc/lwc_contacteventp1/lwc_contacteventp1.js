import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
export default class Lwc_contacteventp1 extends LightningElement 
{
    conid;
    gotfired(event)
    {
        const ln=event.detail.LastName;
        const fn=event.detail.FirstName;
        const ph=event.detail.Phone;
        const email=event.detail.Email;
        const fields={'LastName':ln,'FirstName':fn,'Phone':ph,'Email':email};
        const dataitems={apiName:'Contact',fields};
        createRecord(dataitems).then(response=>{this.conid=response.id}).catch(error=>{this.conid=error.body.message});
    }
}