<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="css/dyin.css"/><!-- 引用外联样式 -->
    <link rel="stylesheet" href="css/swiper-3.4.2.min.css"/>
    <link rel="stylesheet" href="layer/theme/default/layer.css"/>
    <script src="js/swiper-3.4.2.min.js"></script>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="layer/layer.js"></script>
    <script>
        $(function () {
            new Swiper('.swiper-body', {
                autoplay: false,
                loop: false, // 循环播放
                pagination: '.swiper-pagination',
                paginationClickable: true,
                direction: 'vertical',
                mousewheelControl: true,
                keyboardControl: true
            });
            new Swiper('.swiper-musician', {
                autoplay: 5000,
                loop: true,
                direction: 'horizontal'
            });
            var login = $('#login');
            var dyinUser = localStorage.getItem('dyin-user');
            if (dyinUser) {
                login.html(dyinUser + ' | 退出登录');
            } else {
                login.html('登录');
            }
            //1.jquery  on（‘click’，function（）{}）
            //2.jquery  click（function（）{}）
            //3.原生js    onclick=function（）{}
            //4.a标签     herf=‘javascript：方法名’
            //5.onclick属性   onclick=‘方法名’


            var musicianUpload=$('#music_upload');
            musicianUpload.on('click',function () {
                //点击上传音乐，触发事件逻辑
                var dyinUser=localStorage.getItem('dyin-user')
                if (dyinUser){
                    window.location.href='dupload.jsp';
                } else{
                    layer.open({
                        type: 2,
                        title: '',
                        area: ['700px', '500px'],
                        maxmin: false,
                        shadeClose: false,
                        content: 'dlogin.html'
                    })
                }
            })


        });



        function openLoginLayer() {
            var dyinUser = localStorage.getItem('dyin-user');
            if (!dyinUser) {
                layer.open({
                    type: 2,
                    title: '',
                    area: ['700px', '500px'],
                    maxmin: false,
                    shadeClose: false,
                    content: 'dlogin.html'
                })
            } else {
                // 退出登录的逻辑代码
                localStorage.removeItem('dyin-user');
                window.location.reload(); // 刷新当前页面
            }
        }
    </script>

</head>


<body>
    <div class="swiper-container swiper-body">
        <div class="swiper-wrapper">

            <!--第一页     第一页-->
            <div class="swiper-slide">
                <div class="musician-module"
                     style="position: relative; background-image: url(image/swiper_bg1.jpg)">

                    <div class="musician-midden">
                        <img style="margin: 0 auto; display: block"
                             src="image/music.png" width="600"/>
                        <div class="musician-upload">
                            <img id="music_upload" style="display: block"
                                 src="image/music_upload.png" width="252"/>
                            <!--<img src="image/music-gif.png" width="32"-->
                                 <!--style="position: absolute; top: 10px; left: 30px"-->
                            <!--/>-->
                            

                        </div>

                    </div>

                    <div class="musician-footer">
                        <p style="width: 100%; text-align: center;
                            font-size: 18px; padding: 15px 0">已入驻抖音音乐人</p>
                        <div style="width: 970px; overflow: hidden; margin: 0 auto">
                            <div class="swiper-container swiper-musician" style="width: 1020px">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide" style="height: 100px; overflow: hidden">
                                    
                                    <c:forEach items="${reList}" var="musician">
                                        <div class="musician-dou">
                                            <img src="image/dou1.jpg" width="60"/>
                                            <p>${musician.name}</p>
                                        </div>
                                    </c:forEach>
                                       
                                    </div>
                           
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            
   
            
        
        <!--第二页     第二页。。。。。。。。。。。。。。。。。-->
          <div class="swiper-slide">
            <div class="musician-module"
                 style="background-image: url(../dmusic/image/swiper_bg2.jpg)">
                <img class="musintr-logo" src="image/musintr-logo.png"/>

                <div  style="overflow: hidden;width:80%;margin: 80px auto">
                    <div class="float"  >
                      <div style="text-align:center;font-size:14px;background-image: url(../dmusic/image/musintr_bg.png)">
                          <br>
                          <br>
                          <br>
                          <img  style="width: 50px " src="../dmusic/image/musintr-icon-1.png">
                          <p>好内容让好音乐被看见</p>
                          <p style="color: gray">抖音的用户们有千百种玩法和</p>
                          <p style="color: gray">丰富的创意，实力演绎</p>
                          <p style="color: gray">你的原创音乐</p>
                      </div>
                    </div>
                    <div class="float" >
                        <div style="text-align:center;font-size:14px;background-image: url(../dmusic/image/musintr_bg.png)">
                            <br>
                            <br>
                            <br>
                            <img style="width: 50px " src="../dmusic/image/musintr-icon-2.png">
                            <p >个性化分发推荐</p>
                            <p style="color: gray">不管是成名已久，还是新人新作，</p>
                            <p style="color: gray">抖音都会让你的原创音乐</p>
                            <p style="color: gray">与伯乐相遇</p>
                        </div>
                    </div>
                    <div class="float">
                        <div style="text-align:center;font-size:14px;background-image: url(../dmusic/image/musintr_bg.png)">
                            <br>
                            <br>
                            <br>
                            <img style="width: 50px " src="../dmusic/image/musintr-icon-3.png">
                            <p >全系产品推广渠道支持</p>
                            <p style="color: gray">不仅是抖音，好的原创音乐将会</p>
                            <p style="color: gray">根据风格及受众分发至</p>
                            <p style="color: gray">头条全系产品</p>
                        </div>
                    </div>
               </div>
            <<div class="musintr-footer" style="text-align: center;">
                <p>数万首原创音乐，都获得了上万使用量，抖音重新定义了音乐宣发时代2.0</p>
                <br>
                <p style="margin: 0px 45px">我们会倾尽全力扶持中国原创音乐，助力音乐人 ，传播好音乐</p>
            </div>
        </div>
        </div>
          

            <!--第三页     第三页-->
            <div class="swiper-slide">
                <div class="musician-module"
                     style="background-image: url(image/swiper_bg3.jpg)"></div>
            </div>
            <div class="swiper-slide">
                <div class="musician-module"
                     style="background-image: url(image/swiper_bg4.jpg)"></div>
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <div class="musician-header" style="overflow: hidden">
        <div style="max-width: 980px; margin: 0 auto">
            <img width="75" style="margin: 12px 0 0 0"
                 src="image/logo_dm.png"/>
            <div style="float: right; margin-top: 16px">
                <img width="24" style="vertical-align: top; margin: 0 10px" src="image/email_9dc30b0.png"/>
                <span style="font-size: 14px; line-height: 24px; vertical-align: top">反馈及举报邮箱 00000000.[650]com</span>
                <img width="24" style="vertical-align: top; margin: 0 10px" src="image/user_e51ba89.png"/>
                <span id="login" style="cursor: pointer; font-size: 14px; line-height: 24px; vertical-align: top" onclick="openLoginLayer()">登录</span>
            </div>
        </div>
    </div>
    <img class="musician-ad"
            src="image/ad_logo.png"/>

</body>
</html>
</head>
<body>

</body>
</html>