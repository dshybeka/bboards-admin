<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="slate">
		<g:set var="entityName" value="${message(code: 'board.label', default: 'Board')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="navbar navbar-default">
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav">
					<li><a  href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link  action="index">Board list</g:link></li>
				</ul>
			</div>
		</div>
		<div id="create-board" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${boardInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${boardInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:boardInstance, action:'save']"  class="form-horizontal col-lg-6">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
			<div class="col-lg-6">
				<input id="pac-input" class="form-control" type="text" placeholder="Search Box">

				<div id="map-canvas"></div>
			</div>
		</div>
	<asset:javascript src="board-special/boardmap-edit"/>
	</body>
</html>
