
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
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list board list-type-none">
			
				<g:if test="${boardInstance?.additionalDescription}">
				<li class="fieldcontain">
					<span id="additionalDescription-label" class="property-label"><g:message code="board.additionalDescription.label" default="Additional Description" />:</span>
					
						<span class="property-value" aria-labelledby="additionalDescription-label"><g:fieldValue bean="${boardInstance}" field="additionalDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="board.address.label" default="Address" />:</span>
					
						<span class="property-value" aria-labelledby="address-label"><g:link controller="address" action="show" id="${boardInstance?.address?.id}">${boardInstance?.address?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.boardFormat}">
				<li class="fieldcontain">
					<span id="boardFormat-label" class="property-label"><g:message code="board.boardFormat.label" default="Board Format" />:</span>
					
						<span class="property-value" aria-labelledby="boardFormat-label"><g:fieldValue bean="${boardInstance}" field="boardFormat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.crossroads}">
				<li class="fieldcontain">
					<span id="crossroads-label" class="property-label"><g:message code="board.crossroads.label" default="Crossroads" />:</span>
					
						<span class="property-value" aria-labelledby="crossroads-label"><g:formatBoolean boolean="${boardInstance?.crossroads}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.dayOffFlow}">
				<li class="fieldcontain">
					<span id="dayOffFlow-label" class="property-label"><g:message code="board.dayOffFlow.label" default="Day Off Flow" />:</span>
					
						<span class="property-value" aria-labelledby="dayOffFlow-label"><g:fieldValue bean="${boardInstance}" field="dayOffFlow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.dayPhotoUrl}">
				<li class="fieldcontain">
					<span id="dayPhotoUrl-label" class="property-label"><g:message code="board.dayPhotoUrl.label" default="Day Photo Url" />:</span>
					
						<span class="property-value" aria-labelledby="dayPhotoUrl-label"><g:fieldValue bean="${boardInstance}" field="dayPhotoUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.entertainmentCenters}">
				<li class="fieldcontain">
					<span id="entertainmentCenters-label" class="property-label"><g:message code="board.entertainmentCenters.label" default="Entertainment Centers" />:</span>
					
						<span class="property-value" aria-labelledby="entertainmentCenters-label"><g:fieldValue bean="${boardInstance}" field="entertainmentCenters"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.installationPrice}">
				<li class="fieldcontain">
					<span id="installationPrice-label" class="property-label"><g:message code="board.installationPrice.label" default="Installation Price" />:</span>
					
						<span class="property-value" aria-labelledby="installationPrice-label"><g:fieldValue bean="${boardInstance}" field="installationPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.isBacklight}">
				<li class="fieldcontain">
					<span id="isBacklight-label" class="property-label"><g:message code="board.isBacklight.label" default="Is Backlight" />:</span>
					
						<span class="property-value" aria-labelledby="isBacklight-label"><g:formatBoolean boolean="${boardInstance?.isBacklight}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.mapPosition}">
				<li class="fieldcontain">
					<span id="mapPosition-label" class="property-label"><g:message code="board.mapPosition.label" default="Map Position" />:</span>
					
						<span class="property-value" aria-labelledby="mapPosition-label"><g:link controller="position" action="show" id="${boardInstance?.mapPosition?.id}">${boardInstance?.mapPosition?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.minRentDuration}">
				<li class="fieldcontain">
					<span id="minRentDuration-label" class="property-label"><g:message code="board.minRentDuration.label" default="Min Rent Duration" />:</span>
					
						<span class="property-value" aria-labelledby="minRentDuration-label"><g:fieldValue bean="${boardInstance}" field="minRentDuration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.narrowArea}">
				<li class="fieldcontain">
					<span id="narrowArea-label" class="property-label"><g:message code="board.narrowArea.label" default="Narrow Area" />:</span>
					
						<span class="property-value" aria-labelledby="narrowArea-label"><g:formatBoolean boolean="${boardInstance?.narrowArea}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.nightPhotoUrl}">
				<li class="fieldcontain">
					<span id="nightPhotoUrl-label" class="property-label"><g:message code="board.nightPhotoUrl.label" default="Night Photo Url" />:</span>
					
						<span class="property-value" aria-labelledby="nightPhotoUrl-label"><g:fieldValue bean="${boardInstance}" field="nightPhotoUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="board.notes.label" default="Notes" />:</span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${boardInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="board.owner.label" default="Owner" />:</span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="owner" action="show" id="${boardInstance?.owner?.id}">${boardInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.pedestrianCrossings}">
				<li class="fieldcontain">
					<span id="pedestrianCrossings-label" class="property-label"><g:message code="board.pedestrianCrossings.label" default="Pedestrian Crossings" />:</span>
					
						<span class="property-value" aria-labelledby="pedestrianCrossings-label"><g:formatBoolean boolean="${boardInstance?.pedestrianCrossings}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="board.price.label" default="Price" />:</span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${boardInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.range}">
				<li class="fieldcontain">
					<span id="range-label" class="property-label"><g:message code="board.range.label" default="Range" />:</span>
					
						<span class="property-value" aria-labelledby="range-label"><g:fieldValue bean="${boardInstance}" field="range"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.sideDirections}">
				<li class="fieldcontain">
					<span id="sideDirections-label" class="property-label"><g:message code="board.sideDirections.label" default="Side Directions" />:</span>
					
						<span class="property-value" aria-labelledby="sideDirections-label"><g:fieldValue bean="${boardInstance}" field="sideDirections"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.sides}">
				<li class="fieldcontain">
					<span id="sides-label" class="property-label"><g:message code="board.sides.label" default="Sides" />:</span>
					
						<span class="property-value" aria-labelledby="sides-label"><g:fieldValue bean="${boardInstance}" field="sides"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.stops}">
				<li class="fieldcontain">
					<span id="stops-label" class="property-label"><g:message code="board.stops.label" default="Stops" />:</span>
					
						<span class="property-value" aria-labelledby="stops-label"><g:formatBoolean boolean="${boardInstance?.stops}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.surface}">
				<li class="fieldcontain">
					<span id="surface-label" class="property-label"><g:message code="board.surface.label" default="Surface" />:</span>
					
						<span class="property-value" aria-labelledby="surface-label"><g:fieldValue bean="${boardInstance}" field="surface"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.timetables}">
				<li class="fieldcontain">
					<span id="timetables-label" class="property-label"><g:message code="board.timetables.label" default="Timetables" />:</span>
					
						<span class="property-value" aria-labelledby="timetables-label"><g:fieldValue bean="${boardInstance}" field="timetables"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.trafficLlight}">
				<li class="fieldcontain">
					<span id="trafficLlight-label" class="property-label"><g:message code="board.trafficLlight.label" default="Traffic Llight" />:</span>
					
						<span class="property-value" aria-labelledby="trafficLlight-label"><g:formatBoolean boolean="${boardInstance?.trafficLlight}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${boardInstance?.weekdayFlow}">
				<li class="fieldcontain">
					<span id="weekdayFlow-label" class="property-label"><g:message code="board.weekdayFlow.label" default="Weekday Flow" />:</span>
					
						<span class="property-value" aria-labelledby="weekdayFlow-label"><g:fieldValue bean="${boardInstance}" field="weekdayFlow"/></span>
					
				</li>
				</g:if>

				<li class="fieldcontain">
					<span id="mplng-label" class="property-label">Lng:</span>

					<span class="property-value" aria-labelledby="mpzoom-label">${boardInstance.mapPosition?.lng}</span>

				</li>

				<li class="fieldcontain">
					<span id="mplat-label" class="property-label">Lat:</span>

					<span class="property-value" aria-labelledby="mpzoom-label">${boardInstance.mapPosition?.lat}</span>

				</li>

				<li class="fieldcontain">
					<span id="mpzoom-label" class="property-label">Zoom:</span>

					<span class="property-value" aria-labelledby="mpzoom-label">${boardInstance.mapPosition?.zoom}</span>

				</li>

			</ol>
			<g:form url="[resource:boardInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${boardInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-warning" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
