<!DOCTYPE html>
<html lang="en-us">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${head_description!""}">
    <meta name="keywords" content="${head_keywords!""}">
    <title>${head_title!"Moqui Ecosystem"}</title>

    <link rel="icon" type="image/x-icon" href="/favicon.ico">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">

    <link href="/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="/libs/twitter-bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/css/style_blue.css" rel="stylesheet">

    <script src="/libs/jquery/jquery.min.js"></script>                <!--Script jQuery-->
    <script src="/external/jquery/jquery-migrate-1.2.1.min.js"></script>			<!--Script jQuery for old version jQuery-->
    <script src="/libs/twitter-bootstrap/js/bootstrap.min.js"></script>				<!--Bootstrap JavaScript-->
    <!-- <script src="/external/jquery-event/jquery.event.drag-2.2.js"></script><script src="/external/jquery-event/jquery.event.drop-2.2.js"></script> -->
    <script src="/external/jquery-easing/jquery.easing.1.3.js"></script>			<!--Script jquery Easing-->
    <script src="/external/swiper/idangerous.swiper.min.js"></script>			<!--Script Swiper slider -->
    <script src="/external/gozha-nav/jquery.mobile.menu.js"></script>			<!--Script Mobile menu-->
    <script src="/external/modernizr/modernizr.custom.91224.js"></script>		<!--Script Modernizr-->
    <!-- <script src="/external/colorbox/jquery.colorbox.js"></script> -->
    <!-- <script src="/js/form.js"></script>											Script Forms -->
    <script src="/js/custom.js"></script>										<!--Script Custom-->

    <script type="text/javascript" src="/js/shCore.js"></script>
    <script type="text/javascript" src="/js/shBrushXml.js"></script>
    <script type="text/javascript" src="/js/shBrushGroovy.js"></script>
    <link href="/css/shCoreDefault.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="/libs/jquery-validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/libs/jquery-validate/additional-methods.min.js"></script>
    <script type="text/javascript" src="/libs/jstree/jstree.min.js"></script>
    <link href="/libs/jstree/themes/default/style.min.css" rel="stylesheet" type="text/css"/>

    <link href="/css/override.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <header>
        <div class="presentation">
            <div class="main-nav fixed-pos">
                <nav class="container">
                    <div class="logo pull-left">
                        <a href="/index.html"><img class="logo-img moqui-logo" src="/MoquiLogoNew.png" alt="Moqui Logo"></a>
                    </div>
                    <div class="pull-right" id="navigation-box">
                        <a id="navigation-toggle" href="#"><span class="menu-icon"></span></a>
                        <ul id="navigation">
                            <li<#if menu_active! == "framework" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <span class="sub-nav-toggle plus"></span>
                                <a href="/index.html">生态系统</a>
                                <ul>
                                    <li<#if menu_active! == "framework"> class="active-item"</#if>><a href="/framework.html">框架</a></li>
                                    <li<#if menu_active! == "mantle"> class="active-item"</#if>><a href="/mantle.html">业务工件</a></li>
                                    <li<#if menu_active! == "applications"> class="active-item"</#if>><a href="/applications.html">应用程序</a></li>
                                    <li<#if menu_active! == "addons"> class="active-item"</#if>><a href="/addons.html">附加组件</a></li>
                                </ul>
                            </li>
                            <li<#if menu_active! == "service"> class="active-item"</#if>><a href="/service.html">服务供应商</a></li>
                            <li>
                                <span class="sub-nav-toggle plus"></span>
                                <a href="/qapps/my/User/Request">问题与任务</a>
                                <ul>
                                    <li><a href="/qapps/my">我的账号</a></li>
                                    <li><a href="/qapps/my/User/Request">我的请求(问题单)</a></li>
                                    <li><a href="/qapps/hm">蜂巢思维项目管理</a></li>
                                </ul>
                            </li>
                            <li<#if menu_active! == "docs"> class="active-item"</#if>>
                                <span class="sub-nav-toggle plus"></span>
                                <a href="/docs">文档</a>
                                <ul>
                                    <li><a href="/docs/moqui">莫基生态系统</a></li>
                                    <li><a href="/docs/framework">莫基框架</a></li>
                                    <li><a href="/docs/mantle">地幔业务工件</a></li>
                                    <li><a href="/docs/apps">应用程序</a></li>
                                    <li><a href="/javadoc/index.html" target="_blank">接口文档</a></li>
                                </ul>
                            </li>
                            <li<#if menu_active! == "search"> class="active-item"</#if>><a href="/search">搜索</a></li>
                        </ul>
                    </div>
                </nav>
                <#-- <div class="divider-circle"></div> -->
            </div>
            <div class="top-info">
                <div class="container">
                    <p class="top-info__text pull-left hidden-xs small">
                        <a href="https://demo.moqui.org/qapps" target="_blank">体验应用程序示例！</a>
                        <a href="https://demo.moqui.org/store" target="_blank">体验电商示例！</a>
                    </p>
                    <p class="top-info__text pull-right small">
                        评论? 问题? 加入? <a href="/docs/moqui/Community+Guide" target="_blank">社区指南</a>
                    </p>
                </div>
            </div>
        </div>
    </header>
