import { LightningElement,api } from 'lwc';
import template1 from './lwc_lifecyclehookspractice.html';
import secontemplate from './lwc_lifecyclehookspractice2.html';

export default class Lwc_lifecyclehookspractice extends LightningElement {
    @api template='temp1';
    constructor()
    {
        super();
        console.log('inconstructor');

    }
    connectedCallback()
    {
        console.log('connected call back is called');
    }
    disconnectedCallback()
    {
        console.log('disconnected call back is called');
    }
    renderedCallback()
    {
        console.log('renderd call back');
    }
    errorCallback()
    {
        console.log('error call back');
    }

   changetemp()
    {
      console.log('inside change template method');
      if(this.template==='temp1')
      {
        this.template='temp2';
      }
      else{
        this.template='temp1';
      }
    }
    render()
    {
        console.log('inside renderer');
        if(this.template==='temp1')
        {
            return template1;
        }
        else{
            return secontemplate;
        }
    }
}