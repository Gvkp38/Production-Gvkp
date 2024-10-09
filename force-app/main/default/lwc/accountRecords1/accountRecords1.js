import { LightningElement,wire } from 'lwc';
import displayAccounts from '@salesforce/apex/AccountController.displayAccounts';
export default class AccountRecords1 extends LightningElement {

    acclist=[];
    tablecols=[
        {fieldName:"Name",label:"Account Name",type:"text"},
        {fieldName:"Rating",label:"Account Rating",type:"text"},
        {fieldName:"BillingCity",label:"Account City",type:"text"},
        {fieldName:"AnnualRevenue",label:"Account Revenue",type:"number"}
    ];
    acname="";
    
    @wire(displayAccounts,{"accname":"$acname"}) wservicefn({data,error})
    {
        if(data)
        {
            this.acclist = data;
        }
        if(error)
        {
            console.log(error.body);
        }
    }

    handleAccountName(event)
    {
        this.acname = event.target.value;
    }

}