({
	si : function(component, event, helper) {
		alert("Pora reee");
        var p= component.get("v.principle");
        var t= component.get("v.Timeperiod");
        var r= component.get("v.rate");
        var i= component.get("v.intrest");
        var ti= component.get("v.total");
        i=(parseInt(p)*parseInt(t)*parseInt(r))/100;
        ti=parseInt(p)+parseInt(i);
        component.set("v.intrest",i);
        component.set("v.total",ti);
	},
    ci : function(component, event, helper) {
        
        var p= component.get("v.principle");
        var t= component.get("v.Timeperiod");
        var r= component.get("v.rate");
        var i= component.get("v.intrest");
        var ti= component.get("v.total");
		i=parseInt(p)*(1+(parseInt(r)*0.01)*parseInt(t)-1);
        ti=parseInt(p)+parseInt(i);
        component.set("v.intrest",i);
        component.set("v.total",ti);
	}
})