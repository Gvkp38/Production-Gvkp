({
	myAction : function(component, event, helper) {
var a=event.getParam("Name1");
        component.set("v.name",a);
	},
    MakeaCall : function(component, event, helper) {
        var evt=component.getEvent("interfaceEvent");
		var a=component.get("v.name");
        evt.setParams({"Name1":a});
        evt.fire();
	}
   
})