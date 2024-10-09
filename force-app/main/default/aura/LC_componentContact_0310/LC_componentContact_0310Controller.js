({
	callme : function(component, event, helper) {
        
        component.set("v.clist",[{fieldName:'Name',label:'Contact Name',type:'text'},
                      {fieldName:'Phone',label:'Contact Phone',type:'text'},
                      {fieldName:'Email',label:'Contact Email',type:'text'}
                      ]);
       var id1=event.getParam("accid");
        alert(id1);
        var action=component.get("c.contactreturn");
        action.setParams({"str":id1});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state="SUCCESS")
            {
                component.set("v.list1",response.getReturnValue());
            }
        });
		$A.enqueueAction(action);
	}
})