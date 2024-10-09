import { LightningElement } from 'lwc';

export default class PollFeedback extends LightningElement {

    handleInput()
    {
        let frmvalid=false;

        let icontrols = this.template.querySelectorAll("lightning-input");
        for(let i=0;i<icontrols.length;i++)
        {
            if(icontrols[i].validity.valid)
            {
                frmvalid=true;
            }
            else
            {
                frmvalid=false;
                break;
            }
        }
        if(frmvalid==true)
            this.refs.B1.disabled=false;
        else
            this.refs.B1.disabled=true;
    }

    handleFeedback()
    {
        let ev=new CustomEvent("feedbackevent",{detail:"success"});
        this.dispatchEvent(ev);
    }

}