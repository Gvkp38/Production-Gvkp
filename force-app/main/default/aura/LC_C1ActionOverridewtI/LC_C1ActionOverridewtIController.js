({
	call : function(component, event, helper) {
		var params=event.getParam('arguments');
        var a=params.Name;
        var b=params.Phone;
        component.set("v.Name1",a);
        component.set("v.Phone1",b);
	}
})