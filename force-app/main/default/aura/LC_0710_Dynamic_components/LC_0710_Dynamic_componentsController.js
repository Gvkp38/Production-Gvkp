({
	callme : function(component, event, helper) {
        $A.createComponent("lightning:button",
                           {"aura:id":"buttonid",
                            "label":"i am new",
                            "variant":"brand",
                            "onclick":component.getReference("c.pressaction")
                           },
                           function(newButton,status,errorMessage)
                           {
                               if(status=="SUCCESS")
                               {
                                   var body=component.get("v.body");
                                   body.push(newButton);
                                  component.set("v.body",body); 
                               }
                           }
        					
        					);
		
	},
    pressaction:function(component, event, helper)
    {
        alert("hahahaha");
   
         $A.createComponent("lightning:button",
                           {"aura:id":"buttonid",
                            "label":"button2",
                            "variant":"destructive",
                            "onclick":component.getReference("c.pressaction1")
                           },
                           function(newButton,status,errorMessage)
                           {
                               if(status=="SUCCESS")
                               {
                                   var body=component.get("v.body");
                                   body.push(newButton);
                                  component.set("v.body",body); 
                               }
                           }
        					
        					);
},
    pressaction1:function(component, event, helper){
    alert("yeah, finally you got me");
}
})