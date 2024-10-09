import { LightningElement,api,wire } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi'; //Adapters
import MAILING_CITY from '@salesforce/schema/Contact.MailingCity';
import MAILING_COUNTRY from '@salesforce/schema/Contact.MailingCountry';

const FIELDS = [MAILING_CITY,MAILING_COUNTRY];
 
export default class ContactMap extends LightningElement{
contactMarkers;
@api contactId;
@wire(getRecord, { recordId: '$contactId',fields:FIELDS })
wiredData({ error, data }) {
  if (data) {
    this.contactMarkers=[
        {
            title:'Contact Map demo',
            location:{City:getFieldValue(data,MAILING_CITY),Country:getFieldValue(data,MAILING_COUNTRY)},
            description:'This is a demo Loaction'
        }
    ]
  } else if (error) {
     console.error('Error:', error);
  }
}



}