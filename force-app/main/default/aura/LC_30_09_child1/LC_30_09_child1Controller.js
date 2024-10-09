({
	callme : function(component, event, helper) {
		var eve=component.getEvent("cmpEvent");
        eve.fire();
        
	},
    pullme : function(component, event, helper)
    {
    alert("call me i am from child 1");
}
})