({
	callMe : function(component, event, helper) {
        var val1=component.get("v.val1");
        var val2=component.get("v.val2");
        var r=parseInt(val1)+parseInt(val2);
        component.set("v.res",r);
		
	}
})