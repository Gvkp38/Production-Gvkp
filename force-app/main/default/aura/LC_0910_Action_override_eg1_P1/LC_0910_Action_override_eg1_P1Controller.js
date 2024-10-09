({
	yeahitsme : function(component, event, helper) {
        var a=component.get("v.arg1");
        var b=component.get("v.arg2");
		var child=component.find("action1");
        child.first(a,b);
	}
})