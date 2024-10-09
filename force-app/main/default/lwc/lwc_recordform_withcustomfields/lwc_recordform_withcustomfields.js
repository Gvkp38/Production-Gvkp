import { LightningElement,api} from 'lwc';
import bject from '@salesforce/schema/Account';
import name from '@salesforce/schema/Account.Name';
import ratng from '@salesforce/schema/Account.Rating';


export default class Lwc_recordform_withcustomfields extends LightningElement 
{
@api sObject=bject;
@api recordId;
fields=[name,ratng];
checkedv=true;
callme()
{
    this.checkedv=!this.checkedv;
}

}