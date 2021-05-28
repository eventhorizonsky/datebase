<%@ page import="com.xxxx.entity.User" %><%--
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
    <link rel="stylesheet" href="css/style1.css" media="screen" type="text/css" />
    <script src="http://www.jq22.com/jquery/jquery-1.6.2.js"></script>
    <script type="text/javascript" src="jquery.reveal.js"></script>

    <style>
        body{ text-align:center}
        .prompt{margin:0 auto;width:300px;height:150px}

       .big-link{
           background-color: #4CAF50;
           border: none;
           color: white;
           padding: 15px 32px;
           text-align: center;
           text-decoration: none;
           display: inline-block;
           font-size: 16px;
           margin: 4px 2px;
           cursor: pointer;
        }
        .reveal-modal-bg {
            position: fixed;
            height: 100%;
            width: 100%;
            background: #000;
            background: rgba(0,0,0,.8);
            z-index: 100;
            display: none;
            top: 0;
            left: 0;
        }

        .reveal-modal {
            visibility: hidden;
            top: 100px;
            left: 50%;
            margin-left: -300px;
            width: 520px;
            background: #eee url(modal-gloss.png) no-repeat -200px -80px;
            position: absolute;
            z-index: 101;
            padding: 30px 40px 34px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            -moz-box-shadow: 0 0 10px rgba(0,0,0,.4);
            -webkit-box-shadow: 0 0 10px rgba(0,0,0,.4);
            -box-shadow: 0 0 10px rgba(0,0,0,.4);
        }

        .reveal-modal.small 		{ width: 200px; margin-left: -140px;}
        .reveal-modal.medium 		{ width: 400px; margin-left: -240px;}
        .reveal-modal.large 		{ width: 600px; margin-left: -340px;}
        .reveal-modal.xlarge 		{ width: 800px; margin-left: -440px;}

        .reveal-modal .close-reveal-modal {
            font-size: 22px;
            line-height: .5;
            position: absolute;
            top: 8px;
            right: 11px;
            color: #aaa;
            text-shadow: 0 -1px 1px rbga(0,0,0,.6);
            font-weight: bold;
            cursor: pointer;
        }


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
            color: #000000;
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

             background:#d1e6f0;
         }
    </style>

</head>
<body>

<div class="container">

    <ol class="list-inline">
        <%
            if(request.getSession().getAttribute("user")!=null){
        %><form  method="post" class="smart-green" action="Servlet" id="contact" >
        <h3>延边大学安全识别系统</h3>
        <h4>请点击表单后问号查看填表提示</h4>
        <label><span>
            风险点编号 <a href="#" data-reveal-id="prompt1"> <img src="问号.png" alt="" width="10px" height="10px">
            </a></span>
                <input id="risknumber" type="text" name="risknumber"  />


            <div class="error-msg"></div>
        </label>
        <label><span>风险点名称<a href="#" data-reveal-id="prompt2"> <img src="问号.png" alt="" width="10px" height="10px">
            </a></span>
            <input id="riskname" type="text" name="riskname"  />
            <div class="error-msg"></div>
        </label>
        <label><span>风险点位置<a href="#" data-reveal-id="prompt3"> <img src="问号.png" alt="" width="10px" height="10px">
            </a></span>
            <input id="riskplace" type="text" name="riskplace"  />
            <div class="error-msg"></div>
        </label>
        <label><span>风险因素<a href="#" data-reveal-id="prompt4"> <img src="问号.png" alt="" width="10px" height="10px">
            </a></span>
            <input id="risktype" type="text" name="risktype"  />
            <div class="error-msg"></div>
        </label>
        <label><span>风险类别</span>
            <select name="riskclass">
                <option value="" selected></option>
                <option value="实验室">实验室</option>
                <option value="办公室">办公室</option>
                <option value="计算机室">计算机室</option>
                <option value="公寓">公寓</option>
                <option value="教室">教室</option>
                <option value="设备用房">设备用房</option>
                <option value="体育馆等人员活动密集场所">体育馆等人员活动密集场所</option>
                <option value="特种设备">特种设备</option>
                <option value="其他">其他</option>

            </select>
<%--            <input id="riskclass" type="radio" name="riskclass"  />--%>
            <div class="error-msg"></div>
        </label>

        <label><span>风险级别</span>
            <select name="risklevel">
                <option value="" selected></option>
                <option value="低风险">低风险</option>
                <option value="一般风险">一般风险</option>
                <option value="较大风险">较大风险</option>
                <option value="重大风险">重大风险</option>
            </select>
<%--            <input id="risklevel" type="text" name="risklevel"  />--%>
            <div class="error-msg"></div>
        </label><label><span>房间负责人</span>
        <input id="principal" type="text" name="principal"  />
        <div class="error-msg"></div>
    </label>
        </label><label><span>所属专业（科室）</span>
        <input id="Floorprincipal" type="text" name="Floorprincipal"  />
        <div class="error-msg"></div>
    </label>
        </label><label><span>所属学院（部、处）</span>
        <input id="Household leader" type="text" name="Householdleader"  />
        <div class="error-msg"></div>
    </label>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description1" name="description1"></textarea> <span>应对措施</span>
            <textarea id="Precautions1" name="Precautions1"></textarea>
            <span>检查频次</span>
            <select name="frequency1">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description2" name="description2"></textarea> <span>应对措施</span>
            <textarea id="Precautions2" name="Precautions2"></textarea>
            <span>检查频次</span>
            <select name="frequency2">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description3" name="description3"></textarea> <span>应对措施</span>
            <textarea id="Precautions3" name="Precautions3"></textarea>
            <span>检查频次</span>
            <select name="frequency3">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description4" name="description4"></textarea> <span>应对措施</span>
            <textarea id="Precautions4" name="Precautions4"></textarea>
            <span>检查频次</span>
            <select name="frequency4">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description5" name="description5"></textarea> <span>应对措施</span>
            <textarea id="Precautions5" name="Precautions5"></textarea>
            <span>检查频次</span>
            <select name="frequency5">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description6" name="description6"></textarea> <span>应对措施</span>
            <textarea id="Precautions6" name="Precautions6"></textarea>
            <span>检查频次</span>
            <select name="frequency6">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description7" name="description7"></textarea> <span>应对措施</span>
            <textarea id="Precautions7" name="Precautions7"></textarea>
            <span>检查频次</span>
            <select name="frequency7">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description8" name="description8"></textarea> <span>应对措施</span>
            <textarea id="Precautions8" name="Precautions8"></textarea>
            <span>检查频次</span>
            <select name="frequency8">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description9" name="description9"></textarea> <span>应对措施</span>
            <textarea id="Precautions9" name="Precautions9"></textarea>
            <span>检查频次</span>
            <select name="frequency9">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>
        <ul><li><label>
            <span>检查事项</span>
            <textarea id="description10" name="description10"></textarea> <span>应对措施</span>
            <textarea id="Precautions10" name="Precautions10"></textarea>
            <span>检查频次</span>
            <select name="frequency10">
                <option value="" selected></option>
                <option value="每天">每天</option>
                <option value="每周">每周</option>
                <option value="每月">每月</option>
                <option value="每季">每季</option>
                <option value="每年">每年</option>

            </select>
            <div class="error-msg"></div> &nbsp; &nbsp; </label>
            <div class="success-msg"></div></li></ul>






        <label><span>&nbsp;</span><input type="submit" class="button" value="确定" /></label>

    </form>
        <%}else{%><%

        request.getRequestDispatcher("login.jsp").forward(request,response);

    %>

        <%}%>

    </ol>
</div>
<div class="prompt">
<h3>参考规则</h3>
    <br>
<a href="#" class="big-link" data-reveal-id="myModal">

    计算机房

</a>
    <a href="#" class="big-link" data-reveal-id="myModal2">

        实验室

    </a></div>
<div id="prompt1" class="reveal-modal">

    <h1>风险点编号</h1>
   <p>在这一行填写您的风险点编号，请按照下图选择您的楼宇编号，并按“楼宇号”+“楼层号”+“房间号”来填写风险点编号，如理工实训楼B栋
   101房请填写“342101”</p><br>
    <img src="prompt1.png" alt="" width="480px" height="400px"><br>
    <p style="text-align:center;"><a href="prompt1.png" target="_blank">点击查看大图</a></p>
    <p>如果您同时在管理一个楼层，如101-120，则编号填写为“3421xx”</p>

    <a class="close-reveal-modal">&#215;</a>

</div>
<div id="prompt2" class="reveal-modal">

    <h1>风险点名称</h1>
    <p>在这一行填写您的风险点名称，如“化学实验室”</p><br>


    <a class="close-reveal-modal">&#215;</a>

</div>
<div id="prompt3" class="reveal-modal">

    <h1>风险点位置</h1>
    <p>在这一行填写您的风险点位置，如“实验实训楼/*层/***实验室”</p><br>


    <a class="close-reveal-modal">&#215;</a>

</div>
<div id="prompt4" class="reveal-modal">

    <h1>风险因素</h1>
    <p>在这一行填写风险因素，如“气体泄露、人员烫伤、危险化学品”</p><br>


    <a class="close-reveal-modal">&#215;</a>

</div>
<div id="myModal" class="reveal-modal">

    <h1>计算机房规则</h1>
    <p>一、负责教室（机房）管理的部门是否设立安全工作小组，负责教室的安全防火工作，设立安全员负责日常的安全检查。</p>
    <p>二、各教室（机房）是否设立安全责任人，负责教室（机房）的安全工作。班前班后是否认真检查门、窗、水、电，能否对发现的安全隐患要及时处理。</p>
    <p>三、教室(机房)的工作人员是否认真遵守学校的安全管理规章制度，安全操作规程是否建立健全，是否提高安全意识，做好教室（机房）的安全防范工作，防患于未然。
    </p>
    <p>四、是否严禁任何人携带易燃、易爆等危险品进入机房；是否严禁在机房内吸烟与未经批准动用明火。</p>
    <p>五、是否严禁乱拉，乱接电源线，不得私用电炉、炊、烹电器。是否对动力及照明线路应定期检查、维护。</p>
    <p> 六、机房是否做好重点防火防盗单位，机房工作人员要掌握防火技能，应在每学期初检查所配备的消防器材，如有问题应及时与安全保卫部门联系解决。发现火警应切断电源，用灭火设备扑救，并立即报警，疏散学生。
    </p>

    <a class="close-reveal-modal">&#215;</a>

</div>
<div id="myModal2" class="reveal-modal">

    <h1>实验室规则</h1>
    <p>一、负责教室（机房）管理的部门是否设立安全工作小组，负责教室的安全防火工作，设立安全员负责日常的安全检查。</p>
    <p>二、各教室（机房）是否设立安全责任人，负责教室（机房）的安全工作。班前班后是否认真检查门、窗、水、电，能否对发现的安全隐患要及时处理。</p>
    <p>三、教室(机房)的工作人员是否认真遵守学校的安全管理规章制度，安全操作规程是否建立健全，是否提高安全意识，做好教室（机房）的安全防范工作，防患于未然。
    </p>
    <p>四、是否严禁任何人携带易燃、易爆等危险品进入机房；是否严禁在机房内吸烟与未经批准动用明火。</p>
    <p>五、是否严禁乱拉，乱接电源线，不得私用电炉、炊、烹电器。是否对动力及照明线路应定期检查、维护。</p>
    <p> 六、机房是否做好重点防火防盗单位，机房工作人员要掌握防火技能，应在每学期初检查所配备的消防器材，如有问题应及时与安全保卫部门联系解决。发现火警应切断电源，用灭火设备扑救，并立即报警，疏散学生。
    </p>

    <a class="close-reveal-modal">&#215;</a>

</div>
<script src="http://www.jq22.com/js/jq.js"></script>

</body>
</html>
