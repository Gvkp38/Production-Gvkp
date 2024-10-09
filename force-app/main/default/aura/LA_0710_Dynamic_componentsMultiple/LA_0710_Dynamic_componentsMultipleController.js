({
	giveacall : function(component, event, helper) {
        $A.createComponents([["lightning:button",
                              {
                                  "aura:id":"btn1",
                                  "label":"Calculate",
                                  "variant":"brand"
                              }
            
        					],
                             [
                                 "lightning:input",
                                 {
                                 "aura:id":"inp1",
                                  "label":"Name",
                                 "type":"text"
                                 }
                             ],
                             [
                                "lightning:input",
                                 {
                                 "aura:id":"inp2",
                                  "label":"Phone",
                                 "type":"text"
                                 } 
                             ]
                            ],
                            function(getNewComponent,status,errorMessage){
                                if(status=="SUCCESS")
                                {
                                    var body=component.get("v.body");
                                    getNewComponent.forEach(function(item){body.push(item);});
                                    component.set("v.body",body);
		                                }
                            })
	}
})