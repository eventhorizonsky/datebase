<%--
  Created by IntelliJ IDEA.
  User: 徐翼展
  Date: 2021/5/1
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>延边大学安全识别系统</title>
    <link rel="stylesheet" href="css/normalize.css">

    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

    <style>
        html,body{
            width:100%;

            background:url("http://authserver.ybu.edu.cn/authserver/custom/images/login-bg1.jpg;JSESSIONID_auth=UZQSO4ytU_bcCuAx8M56Y-4GH_d4unPiNpfyQUujcP9nzDo9sYod!-1707753256") no-repeat;

        }
    </style>
</head>
<body>
<div class="main">
    <section class="login-form-wrap">
        <h1>延边大学安全识别系统</h1>
        <form class="login-form" action="/lg1/login">
            <label>
                <input type="text" name="username" required placeholder="楼宇名称" value="${messageModel.object.username}">
            </label>
            <label>
                <input type="password" name="password" required placeholder="密码" value="${messageModel.object.password}">
            </label>
            <input type="submit" value="登录">
        </form>
        <h5><a href="#">忘记密码</a></h5>
    </section>
    <div style="text-align:center;clear:both">
        <span id="msg" style="color: red">消息提醒：${messageModel.msg}</span>
    </div>
</div>
<%--<div class="main">--%>
<%--    <section class="login-form-wrap">--%>
<%--        <h1>延边大学安全识别系统</h1>--%>
<%--        <form method="post" id="loginform">--%>

<%--            <input type="text" name="uname" id="uname" required placeholder="用户名" value="${meeageModel.object.username}">--%>

<%--            <input type="password" name="pswd" id="pswd" required placeholder="密码" value="${meeageModel.object.password}">--%>
<%--<br>--%>
<%--            <button type="button" id="login">登录</button><br>--%>
<%--            <span id="msg" style="color: red">${messageModel.msg}</span>--%>


<%--        </form>--%>

<%--        <h5><a href="#">忘记密码</a></h5>--%>
<%--    </section>--%>
<%--    <div style="text-align:center;clear:both">--%>

<%--    </div>--%>
<%--</div>--%>
</body>
<%--引入Jquery--%>
<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
<script type="text/javascript" >
    $("#login").click(function (){
        var username=$("#uname").val();
        var password=$("#pswd").val();
        if (isEmpty(username)){
            $("#msg").html("用户姓名不可为空");
            return;
        }
        if (isEmpty(password)){
            $("#msg").html("用户密码不可为空");
            return;
        }
        $("loginform").submit();
    });
    function isEmpty(str){
        if(str==null||str.trim()==""){
            return true;
        }


    }
</script>

</html>
