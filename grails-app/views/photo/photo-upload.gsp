<%--
  Created by IntelliJ IDEA.
  User: dshybeka
  Date: 29.01.2015
  Time: 0:19
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="slate"/>
    <title>Photo upload</title>
</head>

<body>

<div class="fieldcontain form-group ">

    <div class="navbar navbar-default">
        <div class="navbar-collapse collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav">
                <li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link action="create">Back to board</g:link></li>
            </ul>
        </div>
    </div>

    <div id="list-board" class="content scaffold-list" role="main">
        <g:uploadForm name="dayPhotoUpload">

            <fieldset>
                <g:hiddenField name="boardId" value="${boardId}"/>

                <label for="dayPhoto" class="col-lg-2 control-label">
                    Фото днем
                </label>

                <div class="col-lg-10" id="dayPhoto">
                    <input type="file" name="dayPhoto"/>
                </div>
            </fieldset>

            <fieldset class="buttons">
                <g:actionSubmit class="btn btn-success" action="saveFile" value="Upload"/>
            </fieldset>

        </g:uploadForm>
    </div>
</div>

</body>
</html>