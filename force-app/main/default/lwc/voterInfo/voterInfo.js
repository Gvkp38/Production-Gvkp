import { LightningElement } from 'lwc';

export default class VoterInfo extends LightningElement {

    handleSend()
    {
        let votername=this.refs.vn.value;

        const cdata={"msg":votername};

        let ev=new CustomEvent("indiavote",{detail:cdata,bubbles:true,composed:true});
        this.dispatchEvent(ev);
    }

}