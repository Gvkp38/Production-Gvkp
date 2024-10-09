import { LightningElement} from 'lwc';

export default class LWC_1220_calciNotbestpractice extends LightningElement 
{
result1;
num1;
num2;
ev1(event)
{
this.num1=event.target.value;
}
ev2(event)
{
    this.num2=event.target.value;
}

add()
{
    this.result1=parseInt(this.num1)+parseInt(this.num2);
}
sub()
{
    this.result1=parseInt(this.num1)-parseInt(this.num2);
}
mul()
{
    this.result1=parseInt(this.num1)*parseInt(this.num2);
}
}