({
	callme : function(component, event, helper) {
		var n1=component.get("v.Name1");
        var p1=component.get("v.Phone1");
        var c1=component.get("v.Email1");
        component.set("v.Name",n1);
        component.set("v.Phone",p1);
        component.set("v.Email",c1);
	}
})