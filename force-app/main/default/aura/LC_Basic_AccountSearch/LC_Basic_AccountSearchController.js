({
	Search : function(component, event, helper) {
		var sr=component.get("v.src");
        var action=component.get("c.accountSearch");
        action.setParams({"ss":sr});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=="SUCCESS")
            {
                var result=response.getReturnValue();
                component.set("v.acc",result);
            }
            else{
                alert("not Able to connect with Database");
            }
            
        });
        $A.enqueueAction(action);
	}
})