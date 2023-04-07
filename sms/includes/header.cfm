<cfoutput>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
        integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="src/css/sms.css">
    <script src="src/lib/API.js"></script>
    <title>Twilio SMS Integration </title>
    <meta name="author" content="Sajjad Hussain">
    <link rel="icon" href="./images/favicon.png" type="image/x-icon" />
    <style>
      body * {font-family:'Lato',sans-serif;}
    </style>

</head>
<cfscript>
  app = createObject("component","src.components.config");
  baseUrl=app.baseUrl;
</cfscript>

<body>
<nav class="navbar navbar-expand-lg navbar-light border-bottom">
  <div class="container-fluid">
    <a class="navbar-brand px-5 " href="#baseUrl#index.cfm">Sit Logo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link px-3 border-end border-dark "  href="#baseUrl#index.cfm">Home</a>
        </li>


        

    </div>
  </div>
</nav>    <div class="container-fluid">

</cfoutput>
