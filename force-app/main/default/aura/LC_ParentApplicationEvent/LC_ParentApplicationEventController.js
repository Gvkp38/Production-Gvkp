({
	callme : function(component, event, helper) {
        alert("entered");
		var msg1=event.getParam("ev");
        component.set("v.vare1",msg1);
	}
})