import { LightningElement } from 'lwc';

export default class AssemblyPoll extends LightningElement {

    msg="";

    handleVote(event) // "event" super object will have "indiavote" custom event reference
    {
        this.msg="Voter for Assembly Elections :"+event.detail.msg;
    }

}