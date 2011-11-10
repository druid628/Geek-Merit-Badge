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
    <sec:ifLoggedIn>
	    <strong>Welcome <sec:loggedInUserInfo field="username"/></strong><br/><br/>
    </sec:ifLoggedIn>
    <div id="bootyWrapper">
        <g:layoutBody />
    </div>
    </body>
</html>
