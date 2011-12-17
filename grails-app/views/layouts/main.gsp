<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
	    <div id="header" class="rightHanded">
    <h1 class="appTitle">Geek Merit Badge</h1>
    <div class="tagLine">Put the git blame command to use</div>
	    </div>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>

    <div id="bootyWrapper">
	<div id="welcomeUser">
    	   <sec:ifLoggedIn>
	   	<strong>Welcome <sec:loggedInUserInfo field="username"/></strong>
    	   </sec:ifLoggedIn>
	</div>
	<div id="navigate">
		<ul>
			<li class="top-left"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
			<li><g:link action="create" controller="person2Badge">AWARD</g:link>
			<li>
			   <sec:ifLoggedIn>
			 	<g:link action="show" id="${sec.loggedInUserInfo(field: "id")}" controller="person">${sec.loggedInUserInfo(field: "username")}</g:link>
			   </sec:ifLoggedIn>
			   <sec:ifNotLoggedIn>
			 	<g:link action="index" controller="login">Login</g:link>
		   	   </sec:ifNotLoggedIn>
			</li>

			<li class="top-right">Settings
		</ul>
	</div>
	<div id="contentContainer">
			<br />
        		<g:layoutBody />
			<br />
	</div>
	<div id="floor" class="bottom-left bottom-right">
		<span id="footerTxt">geekMeritBadge &copy;2011 druid628</span>
	</div>
    </div>
    </body>
</html>
