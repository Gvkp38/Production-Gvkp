import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/ContactController.getAccounts';
export default class ContactFilter extends LightningElement {
    accList;
    @wire(getAccounts)
    wiredData({ error, data }) {
        if (data) {
            this.accList = [];
            data.forEach((acc) => {
                const obj = {
                    label: acc.Name,
                    value: acc.id
                };

               this.accList.push(obj);
            });

        } else if (error) {
            console.error('Error:', error);
        }
    }
    handleChange(event) {
        const item = event.target.value;
        console.log('you have fired' + item)
        const eventRef = new CustomEvent('filter', { detail: {item} });
        this.dispatchEvent(eventRef);

    }

}