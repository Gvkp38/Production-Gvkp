import { LightningElement } from 'lwc';

export default class OppContainer extends LightningElement {

    oppcmp=false;

    handleShow()
    {
        this.oppcmp=true;
    }
    handleRemove()
    {
        this.oppcmp=false;
    }

}