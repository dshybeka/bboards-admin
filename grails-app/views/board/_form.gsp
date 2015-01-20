<%@ page import="org.bboards.admin.domains.Board" %>
<style>
 #map-canvas {
	height: 500px;
	width: 500px;
	margin-top: 50px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>


<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'additionalDescription', 'error')} ">
	<label for="additionalDescription">
		<g:message code="board.additionalDescription.label" default="Additional Description" />
		
	</label>
	<g:textField name="additionalDescription" value="${boardInstance?.additionalDescription}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'boardFormat', 'error')} ">
	<label for="boardFormat">
		<g:message code="board.boardFormat.label" default="Board Format" />
		
	</label>
	<g:textField name="boardFormat" value="${boardInstance?.boardFormat}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'crossroads', 'error')} ">
	<label for="crossroads">
		<g:message code="board.crossroads.label" default="Crossroads" />
		
	</label>
	<g:checkBox name="crossroads" value="${boardInstance?.crossroads}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'dayOffFlow', 'error')} ">
	<label for="dayOffFlow">
		<g:message code="board.dayOffFlow.label" default="Day Off Flow" />
		
	</label>
	<g:textField name="dayOffFlow" value="${boardInstance?.dayOffFlow}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'dayPhotoUrl', 'error')} ">
	<label for="dayPhotoUrl">
		<g:message code="board.dayPhotoUrl.label" default="Day Photo Url" />
		
	</label>
	<g:textField name="dayPhotoUrl" value="${boardInstance?.dayPhotoUrl}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'entertainmentCenters', 'error')} ">
	<label for="entertainmentCenters">
		<g:message code="board.entertainmentCenters.label" default="Entertainment Centers" />
		
	</label>
	<g:textField name="entertainmentCenters" value="${boardInstance?.entertainmentCenters}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'installationPrice', 'error')} ">
	<label for="installationPrice">
		<g:message code="board.installationPrice.label" default="Installation Price" />
		
	</label>
	<g:field type="text" name="installationPrice" value="${boardInstance.installationPrice}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'isBacklight', 'error')} ">
	<label for="isBacklight">
		<g:message code="board.isBacklight.label" default="Is Backlight" />
		
	</label>
	<g:checkBox name="isBacklight" value="${boardInstance?.isBacklight}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'mapPosition', 'error')} ">
	<label for="mapPosition">
		<g:message code="mapPosition.label" default="Map Position lat" />
		
	</label>
	<g:field id="position-lat" type="text" name="mapPosition.lat" value="${boardInstance.mapPosition?.lat}" />
</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'mapPosition', 'error')} ">
	<label for="mapPosition">
		<g:message code="mapPosition.label" default="Map Position lng" />

	</label>
	<g:field id="position-lng" type="text" name="mapPosition.lng" value="${boardInstance.mapPosition?.lng}" />
</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'mapPosition', 'error')} ">
	<label for="mapPosition">
		<g:message code="mapPosition.label" default="Map Position zoom" />
	</label>
	<g:field id="position-zoom" type="number" name="mapPosition.zoom" value="${boardInstance.mapPosition?.zoom}" />
</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'minRentDuration', 'error')} ">
	<label for="minRentDuration">
		<g:message code="board.minRentDuration.label" default="Min Rent Duration" />
		
	</label>
	<g:field type="number" name="minRentDuration" value="${boardInstance.minRentDuration}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'narrowArea', 'error')} ">
	<label for="narrowArea">
		<g:message code="board.narrowArea.label" default="Narrow Area" />
		
	</label>
	<g:checkBox name="narrowArea" value="${boardInstance?.narrowArea}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'nightPhotoUrl', 'error')} ">
	<label for="nightPhotoUrl">
		<g:message code="board.nightPhotoUrl.label" default="Night Photo Url" />
		
	</label>
	<g:textField name="nightPhotoUrl" value="${boardInstance?.nightPhotoUrl}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="board.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${boardInstance?.notes}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'pedestrianCrossings', 'error')} ">
	<label for="pedestrianCrossings">
		<g:message code="board.pedestrianCrossings.label" default="Pedestrian Crossings" />
		
	</label>
	<g:checkBox name="pedestrianCrossings" value="${boardInstance?.pedestrianCrossings}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'price', 'error')} ">
	<label for="price">
		<g:message code="board.price.label" default="Price" />
		
	</label>
	<g:field type="text" name="price" value="${boardInstance.price}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'range', 'error')} ">
	<label for="range">
		<g:message code="board.range.label" default="Range" />
		
	</label>
	<g:textField name="range" value="${boardInstance?.range}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'sideDirections', 'error')} ">
	<label for="sideDirections">
		<g:message code="board.sideDirections.label" default="Side Directions" />
		
	</label>
	<g:textField name="sideDirections" value="${boardInstance?.sideDirections}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'sides', 'error')} ">
	<label for="sides">
		<g:message code="board.sides.label" default="Sides" />
		
	</label>
	<g:textField name="sides" value="${boardInstance?.sides}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'stops', 'error')} ">
	<label for="stops">
		<g:message code="board.stops.label" default="Stops" />
		
	</label>
	<g:checkBox name="stops" value="${boardInstance?.stops}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'surface', 'error')} ">
	<label for="surface">
		<g:message code="board.surface.label" default="Surface" />
		
	</label>
	<g:select name="surface" from="${org.bboards.admin.domains.enums.Surface?.values()}" keys="${org.bboards.admin.domains.enums.Surface.values()*.name()}"  value="${boardInstance?.surface?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'trafficLlight', 'error')} ">
	<label for="trafficLlight">
		<g:message code="board.trafficLlight.label" default="Traffic Llight" />
		
	</label>
	<g:checkBox name="trafficLlight" value="${boardInstance?.trafficLlight}" />

</div>

<div class="fieldcontain ${hasErrors(bean: boardInstance, field: 'weekdayFlow', 'error')} ">
	<label for="weekdayFlow">
		<g:message code="board.weekdayFlow.label" default="Weekday Flow" />
		
	</label>
	<g:textField name="weekdayFlow" value="${boardInstance?.weekdayFlow}" />

</div>

<div id="map-canvas"></div>



