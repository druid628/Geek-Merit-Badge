
<%@ page import="com.druid628.gmb.Badge" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'badge.label', default: 'Badge')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'badge.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="title" title="${message(code: 'badge.title.label', default: 'Title')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'badge.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="image" title="${message(code: 'badge.image.label', default: 'Image')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${badgeInstanceList}" status="i" var="badgeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${badgeInstance.id}">${fieldValue(bean: badgeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: badgeInstance, field: "title")}</td>
                        
                            <td>${fieldValue(bean: badgeInstance, field: "description")}</td>
                        
                            <td><img src="${createLink(controller:'badge', action:'image', id: badgeInstance.id)}"/></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${badgeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
