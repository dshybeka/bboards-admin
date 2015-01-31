<%@ page import="org.bboards.admin.domains.Board" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?libraries=places&sensor=false"></script>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'mapPosition', 'error')} ">
    <label for="mapPosition" class="col-lg-2 control-label">
        <g:message code="mapPosition.label" default="Map Position lat"/>

    </label>

    <div class="col-lg-10">
        <g:field class="form-control" id="position-lat" type="text" name="mapPosition.lat"
                 value="${boardInstance.mapPosition?.lat}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'mapPosition', 'error')} ">
    <label for="position-lng" class="col-lg-2 control-label">
        <g:message code="mapPosition.label" default="Map Position lng"/>

    </label>

    <div class="col-lg-10">
        <g:field class="form-control" id="position-lng" type="text" name="mapPosition.lng"
                 value="${boardInstance.mapPosition?.lng}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'mapPosition', 'error')} ">
    <label for="position-zoom" class="col-lg-2 control-label">
        <g:message code="mapPosition.label" default="Map Position zoom"/>
    </label>

    <div class="col-lg-10">
        <g:field class="form-control" id="position-zoom" type="number" name="mapPosition.zoom"
                 value="${boardInstance.mapPosition?.zoom}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'address', 'error')} ">
    <label for="address-full" class="col-lg-2 control-label">
        Адресс
    </label>

    <div class="col-lg-10">
        <g:field class="form-control" id="address-full" type="text" name="address.fullAddress"
                 value="${boardInstance.address?.fullAddress}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'address', 'error')} ">
    <label for="address-district" class="col-lg-2 control-label">
        Район
    </label>

    <div class="col-lg-10">
        <g:field class="form-control" id="distinct-district" type="text" name="address.district"
                 value="${boardInstance.address?.district}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'additionalDescription', 'error')} ">
    <label for="additionalDescription" class="col-lg-2 control-label">
        <g:message code="board.additionalDescription.label" default="Additional Description"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="additionalDescription" value="${boardInstance?.additionalDescription}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'boardFormat', 'error')} ">
    <label for="boardFormat" class="col-lg-2 control-label">
        <g:message code="board.boardFormat.label" default="Board Format"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="boardFormat" value="${boardInstance?.boardFormat}"/>
    </div>

</div>


<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'dayOffFlow', 'error')} ">
    <label for="dayOffFlow" class="col-lg-2 control-label">
        <g:message code="board.dayOffFlow.label" default="Day Off Flow"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="dayOffFlow" value="${boardInstance?.dayOffFlow}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'dayPhotoUrl', 'error')} ">
    <label for="dayPhotoUrl" class="col-lg-2 control-label">
        <g:message code="board.dayPhotoUrl.label" default="Day Photo Url"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="dayPhotoUrl" value="${boardInstance?.dayPhotoUrl}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'entertainmentCenters', 'error')} ">
    <label for="entertainmentCenters" class="col-lg-2 control-label">
        <g:message code="board.entertainmentCenters.label" default="Entertainment Centers"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="entertainmentCenters" value="${boardInstance?.entertainmentCenters}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'installationPrice', 'error')} ">
    <label for="installationPrice" class="col-lg-2 control-label">
        <g:message code="board.installationPrice.label" default="Installation Price"/>

    </label>

    <div class="col-lg-10">
        <g:field type="text" class="form-control" name="installationPrice" value="${boardInstance.installationPrice}"/>
    </div>

</div>


<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'minRentDuration', 'error')} ">
    <label for="minRentDuration" class="col-lg-2 control-label">
        <g:message code="board.minRentDuration.label" default="Min Rent Duration"/>

    </label>

    <div class="col-lg-10">
        <g:field class="form-control" type="number" name="minRentDuration" value="${boardInstance.minRentDuration}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'nightPhotoUrl', 'error')} ">
    <label for="nightPhotoUrl" class="col-lg-2 control-label">
        <g:message code="board.nightPhotoUrl.label" default="Night Photo Url"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="nightPhotoUrl" value="${boardInstance?.nightPhotoUrl}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'notes', 'error')} ">
    <label for="notes" class="col-lg-2 control-label">
        <g:message code="board.notes.label" default="Notes"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="notes" value="${boardInstance?.notes}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'price', 'error')} ">
    <label for="price" class="col-lg-2 control-label">
        <g:message code="board.price.label" default="Price"/>

    </label>

    <div class="col-lg-10">
        <g:field class="form-control" type="text" name="price" value="${boardInstance.price}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'range', 'error')} ">
    <label for="range" class="col-lg-2 control-label">
        <g:message code="board.range.label" default="Range"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="range" value="${boardInstance?.range}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'sideDirections', 'error')} ">
    <label for="sideDirections" class="col-lg-2 control-label">
        <g:message code="board.sideDirections.label" default="Side Directions"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="sideDirections" value="${boardInstance?.sideDirections}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'sides', 'error')} ">
    <label for="sides" class="col-lg-2 control-label">
        <g:message code="board.sides.label" default="Sides"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="sides" value="${boardInstance?.sides}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'surface', 'error')} ">
    <label for="surface" class="col-lg-2 control-label">
        <g:message code="board.surface.label" default="Surface"/>

    </label>

    <div class="col-lg-10">
        <g:select class="form-control" name="surface" from="${org.bboards.admin.domains.enums.Surface?.values()}"
                  keys="${org.bboards.admin.domains.enums.Surface.values()*.name()}"
                  value="${boardInstance?.surface?.name()}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'weekdayFlow', 'error')} ">
    <label for="weekdayFlow" class="col-lg-2 control-label">
        <g:message code="board.weekdayFlow.label" default="Weekday Flow"/>

    </label>

    <div class="col-lg-10">
        <g:textField class="form-control" name="weekdayFlow" value="${boardInstance?.weekdayFlow}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'crossroads', 'error')} ">
    <label for="crossroads" class="col-lg-2 control-label">
        <g:message code="board.crossroads.label" default="Crossroads"/>

    </label>

    <div class="col-lg-10">
        <g:checkBox class="form-control" name="crossroads" value="${boardInstance?.crossroads}"/>
    </div>

</div>


<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'isBacklight', 'error')} ">
    <label for="isBacklight" class="col-lg-2 control-label">
        <g:message code="board.isBacklight.label" default="Is Backlight"/>

    </label>

    <div class="col-lg-10">
        <g:checkBox class="form-control" name="isBacklight" value="${boardInstance?.isBacklight}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'narrowArea', 'error')} ">
    <label for="narrowArea" class="col-lg-2 control-label">
        <g:message code="board.narrowArea.label" default="Narrow Area"/>

    </label>

    <div class="col-lg-10">
        <g:checkBox class="form-control" name="narrowArea" value="${boardInstance?.narrowArea}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'trafficLlight', 'error')} ">
    <label for="trafficLlight" class="col-lg-2 control-label">
        <g:message code="board.trafficLlight.label" default="Traffic Llight"/>

    </label>

    <div class="col-lg-10">
        <g:checkBox class="form-control" name="trafficLlight" value="${boardInstance?.trafficLlight}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'stops', 'error')} ">
    <label for="stops" class="col-lg-2 control-label">
        <g:message code="board.stops.label" default="Stops"/>

    </label>

    <div class="col-lg-10">
        <g:checkBox class="form-control" name="stops" value="${boardInstance?.stops}"/>
    </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: boardInstance, field: 'pedestrianCrossings', 'error')} ">
    <label for="pedestrianCrossings" class="col-lg-2 control-label">
        <g:message code="board.pedestrianCrossings.label" default="Pedestrian Crossings"/>

    </label>

    <div class="col-lg-10">
        <g:checkBox class="form-control" name="pedestrianCrossings" value="${boardInstance?.pedestrianCrossings}"/>
    </div>

</div>





