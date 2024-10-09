import { LightningElement,api } from 'lwc';

export default class Childcomp extends LightningElement {

    @api message;
    @api pname;
    @api childmethod(){
        this.message='this method is called from parent';
        this.pname='lwcparentcomp';
    }

}