({
	invokeme : function(component, event, helper) {
        alert("yea");
		component.find("rec").getNewRecord("Contact",null,false,$A.getCallback(function(){}));	
	},
    callMe : function(component, event, helper) {
        
      component.find("rec").saveRecord(function(response){});
	}
})