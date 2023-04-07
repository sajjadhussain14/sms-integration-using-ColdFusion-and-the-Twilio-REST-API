<cfoutput>	
	<cfscript>
		app = createObject("component","src.components.sms");
	</cfscript>

	<cfinclude template = "./includes/header.cfm">
	<div class="container-fluid text-center">
		<cfinclude template = "./views/sms-form.cfm">
	</div>
	<cfinclude template = "./includes/footer.cfm">
</cfoutput>
    
