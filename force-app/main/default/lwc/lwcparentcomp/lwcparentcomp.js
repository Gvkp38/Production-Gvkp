import { LightningElement } from 'lwc';

export default class Lwcparentcomp extends LightningElement {

    callchildmethod()
    {
        this.template.querySelector("c-childcomp").childmethod();
    }
}