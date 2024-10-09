({
	create : function(component, event, helper) {
        var na= component.get("v.accname");
        var in1= component.get("v.accind");
        var ph= component.get("v. accph");
        var action=component.get("c.createAccount");
        action.setParams({"name":na,"industry":in1,"phone":ph});
        action.setCallback(this,function(response){
                          var state=response.getState();
            				if(state=="SUCCESS")
                            {
                               alert(response.getReturnValue());
                            }
            				else
                            {
                                alert("error while connecting to apex method"+state);
                            }
                         });
		$A.enqueueAction(action);
	}
})