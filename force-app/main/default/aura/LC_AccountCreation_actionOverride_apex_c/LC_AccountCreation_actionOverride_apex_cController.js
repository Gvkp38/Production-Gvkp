({
	callMe : function(component, event, helper) {
        var params=event.getParam('arguments');
        var ag1=params.Accname1;
        var ag2=params.AccPhone1;
        alert(ag2);
        
        component.set("v.Accname",ag1);
        component.set("v.AccPhone",ag2);
        var acc=component.get("v.Acc");
        var action=component.get("c.accountcreate");
        action.setParams({"str1":ag1,"str2":ag2});
        action.setCallback(this,function(response){
           var state=response.getState();
            if(state=='SUCCESS')
            {
                var id=response.getReturnValue();
                component.set("v.AccId",id); 
                
            }
            else
            {
                alert("not able to reach server");
            }
        });
        $A.enqueueAction(action);
		
	}
})