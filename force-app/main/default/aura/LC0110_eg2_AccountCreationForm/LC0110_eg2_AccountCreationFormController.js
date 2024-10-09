({
	Saveme : function(component, event, helper) {
		var evt=component.getEvent("gvk");
        var acc=component.get("v.acc1");
        evt.setParams({"acc":acc});
        evt.fire();
        //$A.get('e.force:refreshView').fire();
	},
    Clearme : function(component, event, helper) {
        
        //$A.get('e.force:refreshView').fire();
		
	}
})