import { LightningElement,track} from 'lwc';
import calcyhelptext from '@salesforce/label/c.calcyhelptext';
export default class LWC_1219_standardCalci extends LightningElement 
{
    num1;
    num2;
    calcyhelptext;
    @track result;
    change1(event)
    {
        const num=event.target.name;
        if(num =='f1')
        {
            this.num1=event.target.value;
            
        }
        else
        {
            this.num2=event.target.value;
            
        }
    }
    add()
    {   
        //const c1=parseInt(this.num1);
        //const c2=parseInt(this.num2);
        this.result=parseInt(this.num1)+parseInt(this.num2);
    }
    Sub()
    {
        //const c1=parseInt(this.num1);
        //const c2=parseInt(this.num2);
        this.result=parseInt(this.num1)-parseInt(this.num2);
    }
    Mul()
    {
        //const c1=parseInt(this.num1);
        //const c2=parseInt(this.num2);
        this.result=parseInt(this.num1)*parseInt(this.num2);
    }
}