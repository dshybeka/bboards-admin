<html>
<head>
    <meta name="layout" content="slate"/>
    <title><g:message code="springSecurity.login.title"/></title>

</head>

<body>

<div class="page-header">
    <h3>Please Login</h3>
</div>

<form action='${postUrl}' method='POST' id='loginForm' class="form-horizontal" autocomplete='off' >

    <div class="form-group">
        <label for="username" class="col-sm-2 control-label"><g:message code="springSecurity.login.username.label"/></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name='j_username' id='username' placeholder="Username">
        </div>
    </div>

    <div class="form-group">
        <label for="password" class="col-sm-2 control-label"><g:message code="springSecurity.login.password.label"/></label>
        <div class="col-sm-10">
            <input type="password" class="form-control" name='j_password' id='password' placeholder="Password">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-success">Sign in</button>
        </div>
    </div>

</form>

<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
