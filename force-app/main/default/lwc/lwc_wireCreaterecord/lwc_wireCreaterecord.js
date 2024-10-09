import { LightningElement,track,api,wire} from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';

export default class Lwc_wireCreaterecord extends LightningElement {
@track accname;
@track site;
@track industry;
@track rating;

name1(event)
{
    this.accname=event.target.value;
}
Site1(event)
{
    this.site=event.target.value;
}
Industry1(event)
{
    this.industry=event.target.value;
}
Rating1(event)
{
    this.rating=event.target.value;
}

saveThis()
{
    const fields={'Rating':this.rating,'Name':this.accname,'Industry':this.industry,'Site':this.site};
    const dataItem={apiName:'Account',fields};
    createRecord(dataItem).then(response=>{alert('record Got saved with '+response.id);}).catch(error=>{alert('your record was failed to create'+error.body.message);});

}


}