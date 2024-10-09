import { LightningElement } from 'lwc';

export default class CheckVoter extends LightningElement {

    voterInfo="";

    handleShow(event)
    {
        let votername="Abhishek";
        let voterid="1000001";

        if(event.target.label==="Show")
        {
        this.voterInfo="Voter Name :"+votername+" Voter ID:"+ voterid;
        event.target.label="Clear";
        }
        else
        {
            this.voterInfo="";
            event.target.label="Show"; 
        }
    }

}