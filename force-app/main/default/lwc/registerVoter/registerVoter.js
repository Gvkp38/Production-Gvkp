import { LightningElement } from 'lwc';

export default class RegisterVoter extends LightningElement {

    msg="";

    handleRegister()
    {
        let vname=this.refs.vn.value;
        let vconstituency=this.refs.vc.value;
        let vage=this.refs.va.value;

        this.msg="Thanks "+vname+" for registration into region "+vconstituency+" Age noted is "+vage;
    }

}