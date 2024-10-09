({
	addme : function(component, event, helper) {
        alert("fuck you");
        var a= component.get("v.aval");
        var b= component.get("v.bval");
        var r=parseInt(a)+parseInt(b);
        component.set("v.Result",r);
	},
    sub: function(component, event, helper) {
        var a= component.get("v.aval");
        var b= component.get("v.bval");
        var r=a-b;
        component.set("v.Result",r);
		
	},
    multiply : function(component, event, helper) {
        var a= component.get("v.aval");
        var b= component.get("v.bval");
        var r=a*b;
        component.set("v.Result",r);
		
	}
})