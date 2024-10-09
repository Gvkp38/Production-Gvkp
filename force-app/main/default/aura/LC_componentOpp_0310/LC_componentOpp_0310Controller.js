({
	callme : function(component, event, helper) {
        
        component.set("v.clist",[{fieldName:'Name',label:'Oppurtuniety Name',type:'text'},
                      {fieldName:'Amount',label:'Oppurtuniety Amount',type:'text'},
                      {fieldName:'CloseDate',label:'Oppurtuniety CloseDate',type:'text'}
                      ]);
        
       var id1=event.getParam("accid");
        alert(id1);
        var action=component.get("c.Opportunitysearch");
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