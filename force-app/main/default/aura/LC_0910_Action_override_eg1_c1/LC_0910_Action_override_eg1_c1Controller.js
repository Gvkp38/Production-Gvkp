({
	callme : function(component, event, helper) {
		var params=event.getParam("arguments");
        var aa=params.nam;
        var bb=params.namam;
        component.set("v.empname",aa);
        component.set("v.empPhone",bb);
	}
})