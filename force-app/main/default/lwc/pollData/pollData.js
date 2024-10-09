import { LightningElement,api } from 'lwc';

export default class PollData extends LightningElement {

   @api stateName="Tamilnadu";
    @api pollMonth="May";
    @api vcount=12000000;

}