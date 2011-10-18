
<%@ page import="com.druid628.gmb.Person" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
				<th>Badge</th>
                            <!--<g:sortableColumn property="image" title="${message(code: 'badge.image.label', default: 'Badge')}" />-->
                            <!--<g:sortableColumn property="id" title="${message(code: 'person.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="firstName" title="${message(code: 'person.firstName.label', default: 'First Name')}" />
                        
                            <g:sortableColumn property="lastName" title="${message(code: 'person.lastName.label', default: 'Last Name')}" />
                        
                            <g:sortableColumn property="username" title="${message(code: 'person.username.label', default: 'Username')}" />
                        
                            <g:sortableColumn property="password" title="${message(code: 'person.password.label', default: 'Password')}" />
                        
                            <g:sortableColumn property="accountExpired" title="${message(code: 'person.accountExpired.label', default: 'Account Expired')}" />
                          -->
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${badges}" status="i" var="badges">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
				<td><img src="${createLink(controller:'badge', action:'image', id: badgeInstance.id)}"/></td>
                            <!--<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personInstance, field: "firstName")}</td>
                        
                            <td>${fieldValue(bean: personInstance, field: "lastName")}</td>
                        
                            <td>${fieldValue(bean: personInstance, field: "username")}</td>
                        
                            <td>${fieldValue(bean: personInstance, field: "password")}</td>
                        
                            <td><g:formatBoolean boolean="${personInstance.accountExpired}" /></td>-->
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${personInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
