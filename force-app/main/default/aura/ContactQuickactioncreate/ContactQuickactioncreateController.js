({
	save : function(component, event, helper) {
        var action=component.get("c.createContact1");
        action.setParams({
            "fname":component.get("v.firstName"),
            "lname":component.get("v.lastName"),
            "accid":component.get("v.recordId"),
        });
        action.setCallback(this,function(response){
                                         var state=response.getState();
            							 if(state=="SUCCESS")
                                         {
                                             alert(reponse.getReturnValue());
                                         }
            	else
                {
                    alert("Error Occured");
                }
        });
        $A.enqueueAction(action);
		
	}
})