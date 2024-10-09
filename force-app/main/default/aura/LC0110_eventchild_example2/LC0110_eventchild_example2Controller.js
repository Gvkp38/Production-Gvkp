({
	search : function(component, event, helper) {
		var ev=component.getEvent("eve2");
        var st=component.get("v.ST");
        ev.setParams({"parstring":st});
        ev.fire();
	}
})