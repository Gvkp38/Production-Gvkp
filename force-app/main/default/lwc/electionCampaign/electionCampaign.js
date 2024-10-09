import { LightningElement } from 'lwc';

export default class ElectionCampaign extends LightningElement {

    msg="";

    handleMouseover()
    {
        this.msg="Please utilize your Vote power";
    }
    handleMouseout()
    {
        this.msg="Have you voted successfully ?";
    }
    handleClick(event)
    {
        event.target.innerHTML="Thanks for your Vote";
    }
}