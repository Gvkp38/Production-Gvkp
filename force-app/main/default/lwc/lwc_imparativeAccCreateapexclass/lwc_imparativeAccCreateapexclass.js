import { LightningElement,track} from 'lwc';
import createAccount from '@salesforce/apex/CreateAccountimparatively.CreateAccountimparativelymethod'

export default class Lwc_imparativeAccCreateapexclass extends LightningElement 
{
@track fname;
@track site;

getfname(event)
{
    this.fname=event.target.value;
}
getsite(event)
{
    this.site=event.target.value;
}
buttonclick(){
createAccount({Aname:this.fname,Site1:this.site}).then(response=>{alert(response)}).catch(error=>{alert(error.body.message)});
}
}