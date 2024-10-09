import { LightningElement,api } from 'lwc';

export default class PoliticalParty extends LightningElement {

    @api partyName;
    @api leaderName;

}