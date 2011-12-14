<html>
    <head>
        <title>Geek Merit Badge</title>
        <meta name="layout" content="main" />
    </head>
    <body>
        <div id="pageBody">
            <p>Add users. Add Badges. Award Badges.</p>

            <div id="controllerList" class="dialog">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                    </g:each>
                </ul>
            </div>
	    <div id="userList" class="dialog">
                <h2>Available Users:</h2>
                <ul>
                    <g:each var="u" in="${com.druid628.gmb.Person.getAll().sort { it.id } }">
			    <li class="user"><g:link action="show" id="${u.id}" controller="person">${u.username}</g:link></li>
                    </g:each>
                </ul>
            </div>
        </div>
    </body>
</html>
