import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub'
export default class Pubsubpublisher extends LightningElement 
{
    fireme()
    {
        let message={
            "message":"this is a message that is came from publisher component",
            "Name":"vasanth",
            "phone":"7032545492"
            
        }
        pubsub.fireEvent("evename",message);
    }
}