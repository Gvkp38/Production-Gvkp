import { LightningElement,api,track,wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
const FIELDS=[
    'Opportunity.Name',
    'Opportunity.StageName',
    'Opportunity.Amount'
];

export default class Lwc_getrecordusing_wire_program1 extends LightningElement {
    @api recordId='0065i00000KMVwQAAX';
    @wire (getRecord,{recordId:'$recordId',fields:FIELDS}) Opportunity;

    get name()
    {
        return this.Opportunity.data.fields.Name.value;
    }

    get stage()
    {
        return this.Opportunity.data.fields.StageName.value;
    }

    get Amount()
    {
        return this.Opportunity.data.fields.Amount.value;
    }
}