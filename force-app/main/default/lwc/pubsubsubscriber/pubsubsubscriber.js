import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub'; 
export default class Pubsubsubscriber extends LightningElement 
{
    message;
    connectedCallback()
    {
        this.regisr()
    }
    regisr()
    {
        pubsub.registerListener('evename',this.handleevent.bind(this));
        //this.message=messagefromevt ? JSON.stringify(messagefromevt,null,'\t'):'no message loaded';
    }
    handleevent(messagefromevt)
    {
        this.message=messagefromevt ? JSON.stringify(messagefromevt,null,'\t'):'no message loaded';
    }
}