import { LightningElement } from 'lwc';
import showData from '@salesforce/apex/IndiaPollController.showData';
import deletePoll from '@salesforce/apex/IndiaPollController.deletePoll';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {NavigationMixin} from 'lightning/navigation';
export default class ObjectUI extends NavigationMixin(LightningElement) {

    datalist=[];
    feedform=false;

    tablecols=[
        {fieldName:"recpath",label:"Polling ID",type:"url",typeAttributes:{label:{fieldName:"Name"},tooltip:{fieldName:"Name"}}},
        {fieldName:"stname",label:"State",type:"text"},
        {fieldName:"Phase_Name__c",label:"Phase",type:"text"},
        {fieldName:"Poll_Date__c",label:"Polling Date",type:"date"},
        {type:"action",typeAttributes:{rowActions:[{label:"Edit",name:"Edit"},{label:"Delete",name:"Delete"}]}}
    ];

    renderedCallback()
    {
        showData().then(result=>{
           for(let i=0;i<result.length;i++)
           {
            if(result[i].IndiaState__r)
            {
                result[i].stname=result[i].IndiaState__r.State_Name__c;
                result[i].recpath="/"+result[i].Id;
            }
           } 
            this.datalist = result;
        }).catch(error=>{
            console.log(error.body.message);
        });        
    }

    handleNew()
    {
        let pg={type:"standard__objectPage",attributes:{objectApiName:"IndiaPoll__c",actionName:"new"}};
        this[NavigationMixin.Navigate](pg);
    }

    handleRowActions(event)
    {
        let rowid = event.detail.row.Id;
        if(event.detail.action.name=="Edit")
        {
            let pg={type:"standard__recordPage",attributes:{recordId:rowid,actionName:"edit"}};
            this[NavigationMixin.Navigate](pg); 
        }
        if(event.detail.action.name=="Delete")
        {
            deletePoll({"pollid":rowid}).then(result=>{
                let ev=new ShowToastEvent({title:"Database Alert",message:result,variant:"success"});
                this.dispatchEvent(ev);
            }).catch(error=>{
                console.log(error.body.message);
            });
        }
    }

    handleAlert()
    {
        this.feedform=true;
    }

    handleEvent(event)
    {
        if(event.detail=="success")
        {
            let ev=new ShowToastEvent({title:"Feedback Submission",message:"Feedback captured Successfully",variant:"success"});
            this.dispatchEvent(ev); 

            this.feedform=false;
        }
    }

}