import { LightningElement, wire, api } from 'lwc';
import getipaddress from '@salesforce/apex/Integrationiplocator.getintegrationmethod';

export default class IntegrationPage1 extends LightningElement {
    @api searchKey;
    result;
    notechange(event) {
        this.searchKey=event.target.value;
        alert(this.searchKey);
    }
    callme() {
    alert("entered");
    getipaddress(this.searchKey).then(
        (result)=>{
            this.result=result;
        }).catch((error)=>{this.result="you got fucked up with some error"});}

}