({
	callme : function(component, event, helper) {
		var en=component.find("empid").get("v.value");
        var ea=component.find("empage").get("v.value");
        var ep=component.find("empph").get("v.value");
        console.log("employee name="+en);
        console.log("employee age="+ea);
        console.log("employee phone="+ep);
	}
})