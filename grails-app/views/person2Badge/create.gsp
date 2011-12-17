

<%@ page import="com.druid628.gmb.Person2Badge" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'person2Badge.label', default: 'Person2Badge')}" />
        <title>Award Badge</title>
    </head>
    <body>
       <div class="body">
            <h1>Award Merit Badge</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${person2BadgeInstance}">
            <div class="errors">
                <g:renderErrors bean="${person2BadgeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="user"><g:message code="person2Badge.user.label" default="User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: person2BadgeInstance, field: 'user', 'errors')}">
                                    <g:select name="user.id" from="${com.druid628.gmb.Person.list()}" optionKey="id" value="${person2BadgeInstance?.user?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="badges"><g:message code="person2Badge.badges.label" default="Badges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: person2BadgeInstance, field: 'badges', 'errors')}">
                                    <g:select name="badges.id" from="${com.druid628.gmb.Badge.list()}" optionKey="id" value="${person2BadgeInstance?.badges?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comments"><g:message code="person2Badge.comments.label" default="Comments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: person2BadgeInstance, field: 'comments', 'errors')}">
                                    <g:textField name="comments" value="${person2BadgeInstance?.comments}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="givenBy"><g:message code="person2Badge.givenBy.label" default="Given By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: person2BadgeInstance, field: 'givenBy', 'errors')}">
                                    <g:select name="givenBy.id" from="${com.druid628.gmb.Person.list()}" optionKey="id" value="${person2BadgeInstance?.givenBy?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="Award" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
