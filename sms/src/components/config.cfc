<cfcomponent name="config">
	<cfscript>
		directoryName="sms"
		domain=cgi.server_name;
		// set endpint URLS
		this.accountSid = "your-id"
		this.secret = "your-secret"
		this.fromNumber = "+12284521668";
		this.baseUrl="http://127.0.0.1:8500" & directoryName
		this.apiEndPoint="https://api.twilio.com/2010-04-01/Accounts/#this.accountSid#/Messages"
	</cfscript>
</cfcomponent>
