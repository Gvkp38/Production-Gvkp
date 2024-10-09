({
	Callme : function(component, event, helper) {
        var evt1=component.getEvent("eve1");
        evt1.setParams({"eventat":component.get("v.in1")});
		evt1.fire();
        alert("child Event Fired");
	}
})