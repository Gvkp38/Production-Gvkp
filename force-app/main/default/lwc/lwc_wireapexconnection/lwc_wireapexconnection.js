import { LightningElement,api, wire } from 'lwc';
import getAssociatedContacts from '@salesforce/apex/apexlwcwireconnector.GetrelatedContacts'
export default class Lwc_wireapexconnection extends LightningElement {
@api recordId;
@wire(getAssociatedContacts,{accid:'$recordId'}) contacts;

}