({
	submitme : function(component, event, helper) {
        var at1=component.get("v.Accn");
        var at2=component.get("v.Accp");
        var child=component.find("c1");
        child.Accountvalues(at1,at2);
		
	}
})