import { LightningElement,api,track} from 'lwc';
const colums=[{label:'Name',fieldName:'Name',type:'text'},
{label:'Phone',fieldName:'phone',type:'phone'},
{label:'Email',fieldName:'email',type:'email'}
];
const data=[{Name:'vasanth',phone:'7032545492',email:'f@f.com'}];

export default class Lwc_1223_inputdatatable extends LightningElement 
{
    @track name1;
    @track phone1;
    @track mail;
    colums=colums;
    data=data;
    capture(event)
    {
        const var1=event.target.name;
        if(var1=='f1')
        {
            this.name1=event.target.value;
        }
        else if(var1=='f2')
        {
            this.phone=event.target.value;
        }
        else{
            this.mail=event.target.value;
        }
    }
    addtotable()
        {   alert('i am here');
            const tempd={Name:this.name1,phone:this.phone1,email:this.mail};
            this.data.push(this.tempd);
        }
}