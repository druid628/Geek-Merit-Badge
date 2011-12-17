
<%@ page import="com.druid628.gmb.Person2Badge" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'person2Badge.label', default: 'Person2Badge')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'person2Badge.id.label', default: 'Id')}" />
                        
                            <th><g:message code="person2Badge.user.label" default="User" /></th>
                        
                            <th><g:message code="person2Badge.badges.label" default="Badges" /></th>
                        
                            <g:sortableColumn property="comments" title="${message(code: 'person2Badge.comments.label', default: 'Comments')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'person2Badge.dateCreated.label', default: 'Date Created')}" />
                        
                            <th><g:message code="person2Badge.givenBy.label" default="Given By" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${person2BadgeInstanceList}" status="i" var="person2BadgeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${person2BadgeInstance.id}">${fieldValue(bean: person2BadgeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: person2BadgeInstance, field: "user")}</td>
                        
                            <td>${fieldValue(bean: person2BadgeInstance, field: "badges")}</td>
                        
                            <td>${fieldValue(bean: person2BadgeInstance, field: "comments")}</td>
                        
                            <td><g:formatDate date="${person2BadgeInstance.dateCreated}" /></td>
                        
                            <td>${fieldValue(bean: person2BadgeInstance, field: "givenBy")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${person2BadgeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
