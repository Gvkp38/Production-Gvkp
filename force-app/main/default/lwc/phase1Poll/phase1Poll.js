import { LightningElement } from 'lwc';

export default class Phase1Poll extends LightningElement {

    phase1List=["Kerala","Odissa","Goa","Westbengal"];

    phase1ListData=[
        {"state":"Kerala","month":"May","date":"15-May"},
        {"state":"Odissa","month":"June","date":"12-June"},
        {"state":"Goa","month":"June","date":"30-June"},
        {"state":"Westbengal","month":"July","date":"15-July"}
    ];


}