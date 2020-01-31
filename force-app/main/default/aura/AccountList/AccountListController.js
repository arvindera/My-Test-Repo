({
	getAccList : function(component, event, helper) {
        
        helper.getAccountList(component);
		
	},
    deleteAccount : function(component, event, helper) {
        //prevent the form from getting submitted
        event.preventDefault();
        
        // Get the value from the field that's in the form
        var accountName = event.target.getElementsByClassName('account-name')[0].value;
        confirm('Delete the ' + accountName + ' account? (don’t worry, this won’t actually work!)');
		
	},
    getAccountDetails : function(component, event,helper)
    {
        //var accountID = event.currentTarget;
        var accountID = event.target.id;
    	//alert('you clicked on ' + accountID);
        //helper.getAccountDetails(component,event);  
        
        $A.createComponent(
            "c:AccountDetails",
            {
                 
            },
            function(newCmp){
                if (component.isValid()) {
                    var body = component.get("v.body");
                    body.push(newCmp);
                    component.set("v.body", body);
                }
            }
        );
    },
})