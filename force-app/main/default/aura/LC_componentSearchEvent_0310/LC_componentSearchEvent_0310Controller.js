({
	callMe : function(component, event, helper) {
		var an=component.get("v.accName");
        var as=component.get("v.accSite");
        var action=component.get("c.accountserch");
        action.setParams({"Name":an,"type":as});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=="SUCCESS")
            {
                alert("able to connect contolletr");
                var id1=response.getReturnValue();
                alert(id1);
                if(id1!="error")
                {
                    var evt=$A.get("e.c:LE_ApplicationEvent_0310");
                    evt.setParams({"accid":id1});
                    evt.fire();
                }
            }
        });
        $A.enqueueAction(action);
	}
})