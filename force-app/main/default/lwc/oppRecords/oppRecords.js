import { LightningElement } from 'lwc';
import showRecords from '@salesforce/apex/OpportunityController.showRecords';
export default class OppRecords extends LightningElement {

    opplist=[];
    tablecols=[
        {fieldName:"Name",label:"Opportunity",type:"text"},
        {fieldName:"StageName",label:"Stage",type:"text"},
        {fieldName:"CloseDate",label:"Target Date",type:"date"},
        {fieldName:"Amount",label:"Amount",type:"currency"}
    ];

    constructor()
    {
        super();
        console.log("Opp LWC constructor is invoked...");
    }
    connectedCallback()
    {
        console.log("Connected callback function invoked");
        showRecords().then(result=>{
            this.opplist = result;
        }).catch(error=>{
            console.log(error.body.message);
        });
    }
    renderedCallback()
    {
        console.log("Renderer function is invoked....");
    }
    disconnectedCallback()
    {
        console.log("Component is removed from the container....");
    }

}