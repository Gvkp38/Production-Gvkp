import { LightningElement,api} from 'lwc';

export default class Lwc_1222_recordeditform extends LightningElement {
showFields=true;
@api recordId;
//@api objectApiName;
toggleFields()
{
this.showFields=!this.showFields;
}
}