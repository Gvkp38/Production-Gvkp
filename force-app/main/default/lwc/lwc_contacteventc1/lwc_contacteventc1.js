import { LightningElement,track} from 'lwc';

export default class Lwc_contacteventc1 extends LightningElement 
{
    @track LastName;
    @track FirstName;
    @track Phone;
    @track Email;
    LastName1(event)
    {
        this.LastName=event.target.value;
    }
    FirstName1(event)
    {
        this.FirstName=event.target.value;
    }
    Phone1(event)
    {
        this.Phone=event.target.value;
    }
    Email1(event)
    {
        this.Email=event.target.value;
    }
    fireme()
    {
        const evt1=new CustomEvent('cevent1',{detail:{LastName:this.LastName,FirstName:this.FirstName,Phone:this.Phone,Email:this.Email}});
        this.dispatchEvent(evt1);
    }
}