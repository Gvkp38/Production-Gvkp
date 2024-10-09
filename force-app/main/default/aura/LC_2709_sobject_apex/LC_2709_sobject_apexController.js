({
	create : function(component, event, helper) {
		var acc=component.get("v.acc");
        var action=component.get("c.accoutthroughobject");
        action.setParams({'acc':acc});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=="SUCCESS")
            {
                alert(response.getReturnValue());
            }
            else{
                alert("Not able to connect method");
            }
        });
        $A.enqueueAction(action);
	}
})