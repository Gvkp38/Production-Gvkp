({
	showme : function(component, event, helper) {
        //step1: call the method or get the method
        var action=component.get("c.GiveData");
        //Step2: Pass params
        //Step 3:Invoke The function/method action.setCallback(this,function(response){});
        action.setCallback(this,function(response){
            									var state=response.getState();	//3.1 get status
                                                if(state=='SUCCESS'){
                                                   var res=response.getReturnValue(); //3.2 get result value/response from server side controller
                                                    component.set("v.acc",res);
                                                }
        										});
        //Step4:Enqueue Action
        $A.enqueueAction(action);
		 
	},
    callme: function(component, event, helper) {
        
		
	}
})