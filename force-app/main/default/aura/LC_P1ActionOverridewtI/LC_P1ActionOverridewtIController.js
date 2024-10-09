({
	yaahhh : function(component, event, helper) {
        var action=component.find("abc1");
        var a=component.get("v.Name1");
        var b=component.get("v.Phone1");
        action.Universal(a,b);
		}
})