
<%@ page import="org.bboards.admin.domains.Board" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="slate">
		<g:set var="entityName" value="${message(code: 'board.label', default: 'Board')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="navbar navbar-default">
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav">
					<li><g:link  action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
		</div>
		<div id="list-board" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped table-hover ">
			<thead>
					<tr>
					
						<g:sortableColumn property="additionalDescription" title="Id" />
					
						<th><g:message code="board.address.label" default="Address" /></th>
					
						<g:sortableColumn property="boardFormat" title="${message(code: 'board.boardFormat.label', default: 'Board Format')}" />
					
						<g:sortableColumn property="crossroads" title="${message(code: 'board.crossroads.label', default: 'Crossroads')}" />
					
						<g:sortableColumn property="dayOffFlow" title="${message(code: 'board.dayOffFlow.label', default: 'Day Off Flow')}" />
					
						<g:sortableColumn property="dayPhotoUrl" title="${message(code: 'board.dayPhotoUrl.label', default: 'Day Photo Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${boardInstanceList}" status="i" var="boardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${boardInstance.id}">${fieldValue(bean: boardInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: boardInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: boardInstance, field: "boardFormat")}</td>
					
						<td><g:formatBoolean boolean="${boardInstance.crossroads}" /></td>
					
						<td>${fieldValue(bean: boardInstance, field: "dayOffFlow")}</td>
					
						<td>${fieldValue(bean: boardInstance, field: "dayPhotoUrl")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${boardInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
