import { LightningElement } from 'lwc';

export default class ParlamentPolls extends LightningElement {

    msg="";

    handleVote(event) // "event" super object will have "indiavote" custom event reference
    {
        this.msg="Voter for Parlament Elections :"+event.detail.msg;
    }
}