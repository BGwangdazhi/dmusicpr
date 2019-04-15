<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../dmusic/css/swiper-3.4.2.min.css">
    <link rel="../stylesheet" href="../dmusic/layer/theme/default/layer.css">
    <script src="../dmusic/js/jquery-1.11.1.min.js"></script>
    <script src="../dmusic/js/swiper-3.4.2.min.js"></script>
    <script src="../dmusic/layer/layer/layer.js"></script>
    <style>
    	* {
            padding: 0;
            margin: 0
        }

        html, body {
            width: 100%;
            height: 100%
        }
        .musician-header {
            z-index: 100;
            position: absolute;
            top: 0;
            right: 0;
            left: 0;
            height: 62px;
            width: 100%;
            background: rgba(255, 255, 255, 0.5);
        }
        .layer-btn{
            width: 160px;
            height: 40px;
            line-height: 40px;
            display: inline-block;
            background: black;
            color: white;
            text-align: center;
        }
        .upload-table{

            width: 500px;
            margin: 0 auto;
            margin-top: 80px;
        }
        .upload-table input{
            margin: 20px 10px;
            height: 38px;
            width: 360px;
            font-size: 18px;
            padding: 0 10px;
        }
    	
    </style>
    
</head>
<body style="background: #eee">
    <div class="musician-header">
        <img style="width: 75px;margin: 12px 0 0 150px" src="../dmusic/image/logo_dm.png">
        <div style="float: right;margin-top: 16px;margin-right: 150px">
            <img style="width: 24px;margin: 0 12px" src="../dmusic/image/email_9dc30b0.png">
            <span style="font-size: 12px;line-height: 24px;vertical-align: top">反馈及举报邮箱 musician@bytedance.com</span>
            <img style="width: 24px;margin: 0 12px" src="../dmusic/image/user_e51ba89.png">
            <span id="login" style="cursor: pointer;font-size: 12px;line-height: 24px;vertical-align: top "
              onclick="openq()">登录</span>
        </div>

    </div>
    <div style="text-align: center;font-size: 20px;margin-top: 100px">音乐人信息</div>
    <form action="musician_add.action" method="post">
    
    <table class="upload-table">
        <tr>
            <td align="right">
                歌手名
            </td>
            <td>
                <input type="text" name="musician.musician">
            </td>
        </tr>
        <tr>
            <td align="right">
                真实姓名
            </td>
            <td>
                <input type="text" name="musician.name">
            </td>
        </tr>
        <tr>
            <td align="right">
                微信
            </td>
            <td>
                <input type="text" name="musician.wechat">
            </td>
        </tr>
        <tr>
            <td align="right">
                身份证号码
            </td>
            <td>
                <input type="text" name="musician.idcard">
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" style="margin-top: 10px">
                <!--水平方向上的对齐方式，垂直方向上的对齐方式-->
                身份证照片
            </td>
            <td>
                <input type="hidden" name="photo">
                <div style="position: relative;width: 380px;margin-left: 10px; height: 100px;border: 1px solid #aaa"><!--border-width/style/color-->
                    <a class="layer-btn" style="position:absolute; bottom: 10px;right: 10px;" href="javascript:startLoginPage()">添加照片</a>
                </div>


            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <!--两列合为一列-->
                <input type="submit" class="layer-btn" style="margin-top: 50px " value="提交实名审核"></input>
            </td>

        </tr>

   
    </table>
	</form>
</body>
</html>