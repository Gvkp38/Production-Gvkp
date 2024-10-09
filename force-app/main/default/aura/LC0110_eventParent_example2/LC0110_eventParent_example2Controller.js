({
	getevent : function(component, event, helper) {
		var st=event.getParam('parstring');
        //alert('search String is :'+st);
        var action=component.get("c.contactsearch");
        action.setParams({"str":st});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=="SUCCESS")
            {
                alert("finally you got it");
                var res=response.getReturnValue();
                component.set("v.contactl",res);
            }
            else
            {
                alert("not able to contact server");
            }
        });
        $A.enqueueAction(action);
	}
})