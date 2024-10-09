({
	callMe : function(component, event, helper) {
        var ev1=$A.get("e.c:LE_Application_Event");
        ev1.setParams({"ev":component.get("v.val1")});
        ev1.fire();
        alert("fired from child");
		
	}
})