({
	Saveme : function(component, event, helper) {
		var evt=component.getEvent("gvk");
        var acc=component.get("v.acc1");
        var action=component.get("c.accountCreate");
        action.setParams({"a":acc});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=="SUCCESS")
            {	
                var rv=response.getReturnValue();
                if(rv!="Faild to create Account")
                {
                evt.setParams({"ids":rv});
                evt.fire();
                }
                else
                {
                    alert("Not able to create account check required fields");
                }
            }
            else
            {
                alert("not able to reach server");
            }
        });
        
        $A.enqueueAction(action);
        //evt.fire();
        
	},
    Clearme : function(component, event, helper) {
        
        //$A.get('e.force:refreshView').fire();
		
	}
})