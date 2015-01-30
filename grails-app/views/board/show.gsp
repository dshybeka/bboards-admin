
<%@ page import="org.bboards.admin.domains.Board" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="slate">
		<g:set var="entityName" value="${message(code: 'board.label', default: 'Board')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<asset:stylesheet src="board-admin-specific"/>
	</head>
	<body>
		<div class="navbar navbar-default">
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav">
					<li><a  href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link  action="index">Board list</g:link></li>
					<li><g:link  action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
		</div>

		<div id="show-board" class="content scaffold-show" role="main">
			<h1>Информация о борде</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list board list-type-none">

				<li class="fieldcontain well">
					<g:form style="padding: 30px 0;" url="[resource:boardInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary" action="edit" resource="${boardInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-warning" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</li>

			</ol>

				<div class="col-md-6">
					<g:if test="${boardInstance?.dayPhoto}">
						<li class="fieldcontain" style="padding-bottom: 20px;">
							<span id="dayPhoto-label" class="property-label">Day photo:</span>
							<div style="background-image: url('${request.contextPath}${boardInstance?.dayPhoto?.url}'); background-size: cover; height: 300px; width: 300px;">
							</div>

						</li>
					</g:if>
					<g:uploadForm name="dayPhotoUpload" controller="photo">

						<fieldset>
							<g:hiddenField name="boardId" value="${boardInstance.id}"/>

							<label for="dayPhoto" class="col-lg-2 control-label">
								Фото днем
							</label>

							<div class="col-lg-10" id="dayPhoto">
								<input type="file" name="dayPhoto"/>
							</div>
						</fieldset>

						<fieldset class="buttons">
							<g:actionSubmit class="btn btn-success" action="saveDayPhoto" value="Загрузить"/>
						</fieldset>

					</g:uploadForm>
				</div>

				<div class="col-md-6">
					<g:if test="${boardInstance?.dayPhoto}">
						<li class="fieldcontain" style="padding-bottom: 20px;">
							<span id="nightPhoto-label" class="property-label">Night photo:</span>
							<div style="background-image: url('${request.contextPath}${boardInstance?.nightPhoto?.url}'); background-size: cover; height: 300px; width: 300px;">
							</div>

						</li>
					</g:if>
					<g:uploadForm name="nightPhotoUpload" controller="photo">

						<fieldset>
							<g:hiddenField name="boardId" value="${boardInstance.id}"/>

							<label for="dayPhoto" class="col-lg-2 control-label">
								Фото ночью
							</label>

							<div class="col-lg-10" id="nightPhoto">
								<input type="file" name="nightPhoto"/>
							</div>
						</fieldset>

						<fieldset class="buttons">
							<g:actionSubmit class="btn btn-success" controller="photo" action="saveNightPhoto" value="Загрузить"/>
						</fieldset>

					</g:uploadForm>
				</div>

		</div>

	</body>
</html>
