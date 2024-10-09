import { LightningElement,wire } from 'lwc';
import getAccount1 from '@salesforce/apex/bringAccount.acclist';
export default class Lwc_wire_practice_1226 extends LightningElement 
{
@wire (getAccount1) Acclist;
}