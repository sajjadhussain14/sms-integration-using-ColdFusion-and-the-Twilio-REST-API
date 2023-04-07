<cfcomponent name="config">
	<cfscript>
		domain=cgi.server_name;
		// set endpint URLS
		this.accountSid = "AC27dbf0c297a72f8ffa6cf5e7af28e487"
		this.secret = "1e164afc63bd0eca3d951e90a44c5400"
		this.fromNumber = "+12284521668";
		this.baseUrl="http://127.0.0.1:8500/sms/"
		this.apiEndPoint="https://api.twilio.com/2010-04-01/Accounts/#this.accountSid#/Messages"
	</cfscript>
</cfcomponent>