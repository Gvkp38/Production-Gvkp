import { LightningElement,api } from 'lwc';

export default class PollPhase extends LightningElement {

    @api pollMonth="May";

    get showPhase1()
    {
        return this.pollMonth==="May" || this.pollMonth==="June";
    }
    get showPhase2()
    {
        return this.pollMonth==="July" || this.pollMonth==="August";
    }
}