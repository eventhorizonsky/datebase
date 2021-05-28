<!DOCTYPE html>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"/>
  <meta name="renderer" content="webkit"/>
  <meta name="force-rendering" content="webkit"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

  <!-- MDUI CSS -->
  <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/mdui@1.0.1/dist/css/mdui.min.css"
          integrity="sha384-cLRrMq39HOZdvE0j6yBojO4+1PrHfB7a9l5qLcmRm/fiWXYY+CndJPmyu5FV/9Tw"
          crossorigin="anonymous"
  />
  <title>Hello, world!</title>
</head>
<body class="mdui-drawer-body-left mdui-drawer-body-right">
<div class="mdui-textfield mdui-textfield-floating-label">
  <label class="mdui-textfield-label">Email</label>
  <input class="mdui-textfield-input" type="email"/>
</div>


<!-- 默认抽屉栏在左侧 -->
<div class="mdui-drawer">
  ... drawer content ...
</div>

<!-- 如果要使抽屉栏在右侧，需要添加类 mdui-drawer-right -->
<div class="mdui-drawer mdui-drawer-right">
  ... drawer content ...
</div>


<!-- MDUI JavaScript -->
<script
        src="https://cdn.jsdelivr.net/npm/mdui@1.0.1/dist/js/mdui.min.js"
        integrity="sha384-gCMZcshYKOGRX9r6wbDrvF+TcCCswSHFucUzUPwka+Gr+uHgjlYvkABr95TCOz3A"
        crossorigin="anonymous"
></script>
</body>
</html>