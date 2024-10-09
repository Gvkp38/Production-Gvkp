({
	callme : function(component, event, helper) {
        var p=component.get("v.Principle");
        var t=component.get("v.intrest");
        var r=component.get("v.tensure");
		var ta=parseInt(p)+(p*t*r)/100;
        component.set("v.Result",ta);
        if(ta>parseInt(p)+p*0.5)
        {
           component.set("v.flag",true);
        }
        else{
            component.set("v.flag",false);
        }
	}
})