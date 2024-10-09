({
	callme : function(component, event, helper) {
		var acc=component.get("v.acc");
        var action=component.get("c.createAccount1");
        action.setParams({acc1:acc});
        //alert("it is getting here");
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=="SUCCESS"){
            alert(response.getReturnValue());
            }
            else
            {
                alert("Not able to contact class")
            }
        });
       $A.enqueueAction(action);
	}
})