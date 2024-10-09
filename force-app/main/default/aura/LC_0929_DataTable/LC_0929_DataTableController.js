({	
    Search : function(component, event, helper) {
		var st=component.get("v.Serchstring");
        var action=component.get("c.accountSearch");
        action.setParams({"ss":st});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=="SUCCESS")
            {
                var retrunvalue=response.getReturnValue();
                component.set("v.accountv",retrunvalue);
            }
            else
            {
                alert("not able to connect method");
            }
        });
        $A.enqueueAction(action);
	}
})