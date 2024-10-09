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
	var acc1= event.getParam("acc");
     var accountsl=component.get("v.accdis");
      accountsl.push(acc1);
	component.set("v.accdis",accountsl);      
	}
})