<cfcomponent name="sms">
	<cfscript>
		app = createObject("component","config");
	</cfscript>

	<!------------------------START SEND SMS-------------------------->
	<cffunction name="sendSMS" access="remote" returnFormat="plain">
		<cfargument name="to" type="any" required="true" />
		<cfargument name="message" type="any" required="true" />
		<cfoutput>
			<cftry>

				<!--- START SOAP REQUEST API--->
				<cfhttp url="https://api.twilio.com/2010-04-01/Accounts/AC27dbf0c297a72f8ffa6cf5e7af28e487/Messages" method="POST" username="#app.accountSid#" password="#app.secret#" result="result">
					<cfhttpparam name="From" type="FormField" value="#app.fromNumber#">
					<cfhttpparam name="To" type="FormField" value="#arguments.to#">
					<cfhttpparam name="Body" type="FormField" value="#arguments.message#">
				</cfhttp>

				<cfreturn result.statusCode>

				<cfcatch type="any">
				<cfreturn 500>

				</cfcatch>
			</cftry>
		</cfoutput>
	</cffunction>
	<!------------------------END SEND SMS-------------------------->



</cfcomponent>