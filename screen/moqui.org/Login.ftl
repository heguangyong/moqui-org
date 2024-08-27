<div id="browser-warning" class="hidden text-center" style="margin-bottom: 80px;">
    <h4 class="text-danger">Your browser is not supported, please use a recent version of one of the following:</h4>
    <div class="row" style="font-size: 4em;">
        <div class="col-sm-2"></div>
        <div class="col-sm-2"><a href="https://www.google.com/chrome/"><i class="fa fa-chrome"></i></a></div>
        <div class="col-sm-2"><a href="https://www.mozilla.org/firefox/"><i class="fa fa-firefox"></i></a></div>
        <div class="col-sm-2"><a href="https://www.apple.com/safari/"><i class="fa fa-safari"></i></a></div>
        <div class="col-sm-2"><a href="https://www.microsoft.com/windows/microsoft-edge"><i class="fa fa-edge"></i></a></div>
        <div class="col-sm-2"></div>
    </div>
</div>
<!-- currently general/common HTML5 and ES5 support is currently required, so check for IE and older browsers -->
<!-- TODO: check for older versions of various browsers, or for HTML5 features like input/etc.@form attribute, ES5 stuff -->
<script>
    var UA = window.navigator.userAgent.toLowerCase();
    var isIE = UA && /msie|trident/.test(UA);
    if (isIE) $("#browser-warning").removeClass("hidden");
</script>

<div class="text-center">
    <h4>登录以访问 <span class="text-info">HiveMind PM</span> 莫基项目</h4>
    <p>需要一个帐户来查看问题（请求）、项目和任务。创建一个 <a class="text-success" href="#new-account" data-toggle="tab">新帐户</a> 以立即获得访问权限。</p>
    <p>您的帐户最初将完全访问我的帐户应用程序以获取请求、消息等，并仅查看HiveMind PM应用程序以查看所有请求、任务等。</p>
</div>
<div class="tab-content">
    <div id="login" class="tab-pane active">
        <form method="post" action="${sri.buildUrl("login").url}" class="form-signin" id="login_form">
            <p class="text-muted text-center">输入您的用户名和密码登录</p>
            <#-- not needed for this request: <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}"> -->
            <input type="text" name="username" value="${(ec.getWeb().getErrorParameters().get("username"))!""}" placeholder="用户名" required="required" class="form-control top" id="login_form_username">
            <input type="password" name="password" placeholder="密码" required="required" class="form-control bottom">
            <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        </form>
        <script>$("#login_form_username").focus();</script>
    </div>
    <div id="reset" class="tab-pane">
        <form method="post" action="${sri.buildUrl("resetPassword").url}" class="form-signin" id="reset_form">
            <p class="text-muted text-center">输入您的用户名和密码登录</p>
            <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
            <input type="text" name="username" placeholder="用户名" required="required" class="form-control">
            <button class="btn btn-lg btn-danger btn-block" type="submit">重置并电邮密码</button>
        </form>
    </div>
    <div id="change" class="tab-pane">
        <form method="post" action="${sri.buildUrl("changePassword").url}" class="form-signin" id="change_form">
            <p class="text-muted text-center">输入详细信息以更改密码</p>
            <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
            <input type="text" name="username" value="${(ec.getWeb().getErrorParameters().get("username"))!""}" placeholder="用户名" required="required" class="form-control top">
            <input type="password" name="oldPassword" placeholder="旧密码" required="required" class="form-control middle">
            <input type="password" name="newPassword" placeholder="新密码" required="required" class="form-control middle">
            <input type="password" name="newPasswordVerify" placeholder="新密码验证" required="required" class="form-control bottom">
            <button class="btn btn-lg btn-danger btn-block" type="submit">更改密码</button>
        </form>
    </div>
    <div id="new-account" class="tab-pane">
        <form name="createAccount" id="createAccount" method="post" class="form-signin" action="${sri.buildUrl("createAccount").url}">
            <p class="text-muted text-center">输入详细信息以创建新帐户</p>
            <input type="hidden" name="moquiFormName" value="createAccount">
            <input type="text" name="lastName" value="${(ec.getWeb().getErrorParameters().get("lastName"))!""}" placeholder="姓" class="form-control middle required" required="required">
            <input type="text" name="firstName" value="${(ec.getWeb().getErrorParameters().get("firstName"))!""}" placeholder="名" class="form-control top required" required="required">
            <input type="email" name="emailAddress" value="${(ec.getWeb().getErrorParameters().get("emailAddress"))!""}" placeholder="Email" class="form-control middle email required" required="required">
            <input type="text" name="username" value="${(ec.getWeb().getErrorParameters().get("username"))!""}" placeholder="用户名 (请使用 GitHub ID)" class="form-control middle">
            <input type="password" class="form-control middle required" name="newPassword" placeholder="密码" required="required">
            <input type="password" class="form-control bottom required" name="newPasswordVerify" placeholder="验证密码" required="required">
            <button class="btn btn-lg btn-success btn-block" type="submit">创建新帐户</button>
        </form>
    </div>
</div>
<div class="text-center">
    <ul class="list-inline">
        <li><a class="text-muted" href="#login" data-toggle="tab">登录</a></li>
        <li><a class="text-muted" href="#reset" data-toggle="tab">重置密码</a></li>
        <li><a class="text-muted" href="#change" data-toggle="tab">更改密码</a></li>
        <li><a class="text-muted" href="#new-account" data-toggle="tab">新帐户</a></li>
    </ul>
</div>
