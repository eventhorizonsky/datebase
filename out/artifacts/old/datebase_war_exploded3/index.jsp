<%--
  Created by IntelliJ IDEA.
  User: 徐翼展
  Date: 2021/5/1
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>填写内容</title>
    <style>
        .smart-green {
            margin: 10px auto 20px auto;
            /*margin-left: auto;*/

            max-width: 500px;
            /*background: #F8F8F8;*/
            padding: 30px 30px 20px 30px;
            font: 12px Arial, Helvetica, sans-serif;
            color: #666;
            border-radius: 5px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
        }
        .smart-green h1 {
            font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
            padding: 20px 0px 20px 40px;
            display: block;
            margin: -30px -30px 10px -30px;
            color: #FFF;
            background: #9DC45F;
            text-shadow: 1px 1px 1px #949494;
            border-radius: 5px 5px 0px 0px;
            -webkit-border-radius: 5px 5px 0px 0px;
            -moz-border-radius: 5px 5px 0px 0px;
             border-bottom: 1px solid #89AF4C;
        }
        .smart-green h1 > span {
             display: block;
             font-size: 11px;
            color: #FFF;
        }
        .smart-green label {
            display: block;
            margin: 0px 0px 5px;
        }
        .smart-green label > span {
            float: left;
            margin-top: 10px;
            color: #ffffff;
        }
        .smart-green input[type="text"], .smart-green input[type="email"],
        .smart-green textarea, .smart-green select {
            color: #555;
            height: 30px;
            line-height: 15px;
            width: 100%;
            padding: 0px 0px 0px 10px;
            margin-top: 2px;
            border: 1px solid #E5E5E5;
            background: #FBFBFB;
            outline: 0;
            -webkit-box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
            box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
            font: normal 14px/14px Arial, Helvetica, sans-serif;
        }
        .smart-green textarea {
            height: 100px;
            padding-top: 10px;
        }
        .smart-green .button {
            background-color: #9DC45F;
            border-radius: 5px;
            -webkit-border-radius: 5px;
            -moz-border-border-radius: 5px;
            border: none;
            padding: 10px 25px 10px 25px;
            color: #FFF;
            text-shadow: 1px 1px 1px #949494;
        }
        .smart-green .button:hover {
            background-color: #80A24A;
        }
        .error-msg{
            color: red;
            margin-top: 10px;
        }
        .success-msg{
            color: #80A24A;
            margin-top: 10px;
            margin-bottom: 10px;
        }html,body{
             width:100%;

             background:url("http://authserver.ybu.edu.cn/authserver/custom/images/login-bg1.jpg;JSESSIONID_auth=UZQSO4ytU_bcCuAx8M56Y-4GH_d4unPiNpfyQUujcP9nzDo9sYod!-1707753256") no-repeat;

         }
    </style>

</head>
<body>
<form  method="post" class="smart-green">
    <label><span>风险点编号</span>
        <input id="risknumber" type="text" name="risknumber"  />
        <div class="error-msg"></div>
    </label>
    <label><span>风险点名称</span>
        <input id="riskname" type="text" name="riskname"  />
        <div class="error-msg"></div>
    </label>
    <label><span>风险点位置</span>
        <input id="riskplace" type="text" name="riskplace"  />
        <div class="error-msg"></div>
    </label>
    <label><span>风险因素</span>
        <input id="risktype" type="text" name="risktype"  />
        <div class="error-msg"></div>
    </label>
    <label><span>风险类别</span>
        <input id="riskclass" type="text" name="riskclass"  />
        <div class="error-msg"></div>
    </label>
    <label><span>风险级别</span>
        <input id="risklevel" type="text" name="risklevel"  />
        <div class="error-msg"></div>
    </label><label><span>房间负责人</span>
    <input id="principal" type="text" name="principal"  />
    <div class="error-msg"></div>
</label>
    </label><label><span>楼层负责人</span>
    <input id="Floorprincipal" type="text" name="Floorprincipal"  />
    <div class="error-msg"></div>
</label>
    </label><label><span>楼宇负责人</span>
    <input id="Household leader" type="text" name="Household leader"  />
    <div class="error-msg"></div>
</label>

    <label><span>检查事项</span>
        <textarea id="description" name="description"></textarea>
        <div class="error-msg"></div> &nbsp; &nbsp; </label>
    <div class="success-msg"></div>
    <label><span>&nbsp;</span><input type="submit" class="button" value="确定" /></label>

</form>

</body>
</html>
