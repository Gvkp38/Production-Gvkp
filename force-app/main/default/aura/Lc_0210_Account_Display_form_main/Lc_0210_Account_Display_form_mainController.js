({
	doinit : function(component, event, helper) {
		var clm= [
            {fieldName:'Name',label:'Account Name',type:'text'},
            {fieldName:'Phone',label:'Account Phone',type:'text'},
            {fieldName:'Site',label:'Account Site',type:'text'},
            {fieldName:'BillingAddress',label:'Account BillingAddress',type:'text'}
        ];
       component.set("v.clm",clm);  
	},
    fireme : function(component, event, helper) {
     var accountsl=component.get("v.accdis");
	var acc1= event.getParam("ids");
     var action=component.get("c.accreturn");
        action.setParams({"abc":acc1});
        action.setCallback(this,function(response){
            
            var state=response.getState();
            if(state=="SUCCESS")
            {	var acc2=response.getReturnValue();
      accountsl.push(acc2);
	component.set("v.accdis",accountsl);
            }
            else
            {
                alert("not able to reach server");
            }
        });
    $A.enqueueAction(action);       
	}
})