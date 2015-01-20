<!DOCTYPE html>
<html lang="en">
<head>
    <asset:stylesheet src="bootswatch/bootstrap.min.css"/>
    <asset:stylesheet src="board-admin-specific.css"/>
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
</head>

<body>

<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="${createLink(uri: '/')}" class="navbar-brand">B-Admin</a>
        </div>

        <div class="navbar-collapse collapse" id="navbar-main">

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">One day you will see here login btn</a></li>
            </ul>

        </div>
    </div>
</div>


<div class="container">
    <div class="page-header">
        <div class="row">
            <g:layoutBody/>
        </div>
    </div>
</div>

</body>
</html>