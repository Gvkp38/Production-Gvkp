import { LightningElement,wire } from 'lwc';
import displayAccounts from '@salesforce/apex/AccountController.displayAccounts';
export default class AccountRecords extends LightningElement {

    acclist=[];
    tablecols=[
        {fieldName:"Name",label:"Account Name",type:"text"},
        {fieldName:"Rating",label:"Account Rating",type:"text"},
        {fieldName:"BillingCity",label:"Account City",type:"text"},
        {fieldName:"AnnualRevenue",label:"Account Revenue",type:"number"}
    ];

    @wire(displayAccounts) wservice;

    handleShow()
    {
        this.acclist = this.wservice.data;
    }

}