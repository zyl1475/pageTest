<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EAsySportIndex.aspx.cs" Inherits="EAsySportIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
    <link href="css/bluetheme.min.css" rel="stylesheet" />
    <link href="css/easysportstyle.css" rel="stylesheet" />
    <script src="js/jquery-1.11.3.min.js"></script>
    <script>
        $(document).bind('mobileinit', function () {
            $.mobile.changePage.defaults.changeHash = false;
            $.mobile.hashListeningEnabled = true;
            $.mobile.pushStateEnabled = false;
        });
        $(function () {
            $(":jqmData(role='page')").attr("data-title", document.title);
        });
</script>
<script src="js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
<style type="text/css">
	.nav-glyphish-example .ui-btn{
		padding-top: 20px;
	}
	.nav-glyphish-example .ui-btn:after{ 
		width: 20px; 
		height: 20px; 
		margin-left: -10px; 
		margin-top: -7px;
		box-shadow: none;  
		border-radius: 0;
	}
	.event,.eventcircle,.person,.club{
		font-size:14px;
		font-weight:normal;
		color:#7d7d7d;
	}
	.event_light,.eventcircle_light,.person_light,.club_light{
		font-size:14px;
		font-weight:normal;
		color:#6dafe3;
	}
	.event_light:after{ 
		background: url("images/赛事.png") 50% 50% no-repeat; 
		background-size: 20px 20px;
	}
	.eventcircle_light:after{ 
		background: url("images/赛圈.png") 50% 50% no-repeat; 
		background-size: 20px 20px;
	}
	.club_light:after{
		background: url("images/俱乐部.png") 50% 50% no-repeat;
		background-size: 20px 20px;
	}
	.person_light:after{ 
		background: url("images/个人.png") 50% 50% no-repeat;
		background-size: 20px 20px;
	}
	.event:after{ 
		background: url("images/赛事灰.png") 50% 50% no-repeat; 
		background-size: 20px 20px;
	}
	.eventcircle:after{ 
		background: url("images/赛圈灰.png") 50% 50% no-repeat; 
		background-size: 20px 20px;
	}
	.club:after{
		background: url("images/俱乐部灰.png") 50% 50% no-repeat;
		background-size: 20px 20px;
	}
	.person:after{ 
		background: url("images/个人灰.png") 50% 50% no-repeat;
		background-size: 20px 20px;
	}
	#hot,#latest,#local,#release,#participate,#city,#active,#star{
		font-size:medium; 
		font-weight:600;
	}
	#hot,#release{
		color:#6dafe3;
	} 
	.hot,.latest,.local{
		height:2px;
	}  
	.latest,.local{
		background-color:#949494;
	} 
	.hot{
		background-color:#208EF4;
	}  
	.ui-page {  
		backface-visibility: hidden;
	} 
	.user_information{
		margin-top:15px;
	}
	.user{
		margin-top:-68px;
		margin-left:15px;
	}
	.user_head{
		height: 90px; 
		width: 90px;
		border-radius: 50%;
		border: solid 2px #6dafe3;
		float: left;  
		margin-top:-15px;
		position:relative;
	}
	.username{
		float: left;
		margin-top:8px;
		position:relative;
	}
	form{
		color:#000000;
	}
	font{
		font-size:large; 
		font-weight:600; 
		color:#000000;
	}
	strong{
		color:#666666;
	}
	ul li a img{
		width:100%;
		height:100%;
		border-radius:9px;
	}
	ul li a div{
		float:right; 
		width:70px; 
		height:30px; 
		background-color:#155CB0; 
		color:#FFFFFF;
		margin-bottom:-8px;
		margin-top:8px;
		margin-right:-12px;
		border-radius:5px;
	}
	.sign_up,.gaming,.over,.audit,.audit_not_pass,.pass_audit{
		float:right; 
		color:#FFF; 
		font-size:small; 
		margin-top:-23px; 
		margin-right:3px; 
		width:100px; 
		height:40px; 
		border-radius:5px;
	}
	.sign_up{
		background-color:#F83236;
	}
	.gaming{
		background-color:#E3B103;
	}
	.over,.audit,.fail_audit{
		background-color:#CBCBCB;
	}
	.pass_audit{
		background-color:#01B654;
	}
	span,td img{
		 border-radius:5px;
	}
	.span_bg{
		background-color:#e1e1e1; 
		border:solid 6px #e1e1e1;
	}
	p{
		 margin-bottom:auto;
	}
	body,div,ul,li,a,img{
		margin: 0;
		padding: 0;
	}
  	ul,li{
		list-style: none;
	}
  	a{
		text-decoration: none;
	}
  	.banner{
		width:100%; 
		height:150px; 
		overflow: hidden;
	}
  	.imgList{
		width:100%; 
		height:150px;
	}
  	.imgList li{
		width:100%; 
		height:150px; 
		display: none;
	}
	.imgList li a img {
		border-radius:0;
	}
  	.imgList .imgOn{
		display: inline;
	}
	
</style>
    <script>
        $(document).ready(function () {
            $("#hot").mousedown(function () {
                $("#local_game").hide();
                $("#latest_game").hide();
                $("#hot_game").show();
                $("#hot").css("color", "#6dafe3");
                $("#latest").css("color", "#000000");
                $("#local").css("color", "#000000");
                $(".hot").css("background-color", "#208EF4");
                $(".latest").css("background-color", "#949494");
                $(".local").css("background-color", "#949494");
            });
            $("#latest").mousedown(function () {
                $("#hot_game").hide();
                $("#local_game").hide();
                $("#latest_game").show();
                $("#hot").css("color", "#000000");
                $("#local").css("color", "#000000");
                $("#latest").css("color", "#6dafe3");
                $(".hot").css("background-color", "#949494");
                $(".latest").css("background-color", "#208EF4");
                $(".local").css("background-color", "#949494");
            });
            $("#local").mousedown(function () {
                $("#hot_game").hide();
                $("#latest_game").hide();
                $("#local_game").show();
                $("#hot").css("color", "#000000");
                $("#latest").css("color", "#000000");
                $("#local").css("color", "#6dafe3");
                $(".hot").css("background-color", "#949494");
                $(".latest").css("background-color", "#949494");
                $(".local").css("background-color", "#208EF4");
            });
            $("#participate").mousedown(function () {
                $("#release_game").hide();
                $("#participate_game").show();
                $("#release").css("color", "#000000");
                $("#participate").css("color", "#6dafe3");
                $(".release").css("background-color", "#949494");
                $(".participate").css("background-color", "#208EF4");
            });
            $("#release").mousedown(function () {
                $("#participate_game").hide();
                $("#release_game").show();
                $("#participate").css("color", "#000000");
                $("#release").css("color", "#6dafe3");
                $(".participate").css("background-color", "#949494");
                $(".release").css("background-color", "#208EF4");
            });
            $("#city").mousedown(function () {
                $("#city_page").show();
                $("#active_page").hide();
                $("#star_page").hide();
                $("#star").css("color", "#000000");
                $("#active").css("color", "#000000");
                $("#city").css("color", "#6dafe3");
                $(".star").css("background-color", "#949494");
                $(".active").css("background-color", "#949494");
                $(".city").css("background-color", "#208EF4");
            });
            $("#active").mousedown(function () {
                $("#city_page").hide();
                $("#active_page").show();
                $("#star_page").hide();
                $("#star").css("color", "#000000");
                $("#active").css("color", "#6dafe3");
                $("#city").css("color", "#000000");
                $(".star").css("background-color", "#949494");
                $(".active").css("background-color", "#208EF4");
                $(".city").css("background-color", "#949494");
            });
            $("#star").mousedown(function () {
                $("#city_page").hide();
                $("#active_page").hide();
                $("#star_page").show();
                $("#star").css("color", "#6dafe3");
                $("#active").css("color", "#000000");
                $("#city").css("color", "#000000");
                $(".star").css("background-color", "#208EF4");
                $(".active").css("background-color", "#949494");
                $(".city").css("background-color", "#949494");
            });



            var curIndex = 0;
            var autoChange = setInterval(function () {
                if (curIndex < $(".imgList li").length - 1) {
                    curIndex++;
                } else {
                    curIndex = 0;
                }
                changeTo(curIndex);
            }, 3500);

            function changeTo(num) {
                $(".imgList").find("li").removeClass("imgOn").hide().eq(num).fadeIn().addClass("imgOn");
            }
        });
        function my_data() {
            parent.location = "Person.html";//我的个人页
        }
        function my_event() {
            parent.location = "Myeventcircle.html";//我的赛圈页
        }
        function my_club() {
            parent.location = "Myclub.html";//我的俱乐部页
        }
        function my_integral() {
            parent.location = "Myintegral.html";//我的积分页
        }
        function my_set() {
            parent.location = "Myset.html";//我的设置页
        }
      
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div data-role="page" data-theme="a" id="event_page">
        <div class="banner">
            <ul class="imgList">
              <li class="imgOn">
                  <asp:HyperLink ID="HyperLink1" runat="server">
                      <asp:Image ID="Image1" runat="server" ImageUrl="~/images/1.jpg" /> </asp:HyperLink>  </li>
              <li>
                  <asp:HyperLink ID="HyperLink2" runat="server">
                      <asp:Image ID="Image2" runat="server" ImageUrl="~/images/2.jpg" /></asp:HyperLink></li>
              <li>
                  <asp:HyperLink ID="HyperLink3" runat="server">
                      <asp:Image ID="Image3" runat="server" ImageUrl="~/images/3.jpg" /></asp:HyperLink></li>
            </ul>
        </div>
        <div data-role="navbar">
            <ul>
                <li><a id="hot">热门</a></li>
                <li><a id="latest">最新</a></li>
                <li><a id="local">同城</a></li>
            </ul>
            <ul>
                <li class="hot" style="background-color:#6dafe3; height:2px"></li>
                <li class="latest" style="background-color:#949494; height:2px"></li>
                <li class="local" style="background-color:#949494; height:2px"></li>
            </ul>
        </div>
        
        <div data-role="content">
        	<div id="hot_game">
            	<a href="EventIndex.html" rel="external">
                    <div style="border:solid 1px #D3E8F1; border-radius:5px">
                        <table width="100%" style="font-size:small">
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/徒步穿越丹霞山.jpg" width="100%" height="150px"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;<font>徒步穿越丹霞山</font></td>
                            </tr>
                            <tr>
                                <td width="35%">&nbsp;<asp:Image ID="Image5" runat="server" ImageUrl="~/images/place.png" />&nbsp;广东&nbsp;韶关市</td>
                                <td width="65%"><img src="images/time.png" />&nbsp;2016.11.10</td>
                            </tr>
                        </table>
                        <p></p>
                        <div>
                            <div style="float:left; font-size:11px; margin-top:-9px">
                                <span>&nbsp;</span>
                                <span class="span_bg">&nbsp;全程徒步穿越&nbsp;</span>
                                <span class="span_bg">&nbsp;4人组&nbsp;</span>
                            </div>
                            <a href="Sign.html" rel="external">
                            	<div class="sign_up" align="center">
                                	<p>我要报名</p>
                            	</div>
                        	</a>
                        </div>
                        <p>&nbsp;</p>
                    </div>
                </a>
                
                <a href="EventIndex2.html" rel="external">
                    <div style="border:solid 1px #D3E8F1; margin-top:5px; border-radius:5px">
                        <table width="100%" style="font-size:small">
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image6" runat="server" ImageUrl="~/images/天津高校.jpg" width="100%" height="150px"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;<font>天津高校</font></td>
                            </tr>
                            <tr>
                                <td width="35%">&nbsp;<img src="images/place.png">&nbsp;天津&nbsp;天津市</td>
                                <td width="65%"><img src="images/time.png">&nbsp;2016.03.12</td>
                            </tr>
                        </table>
                        <p></p>
                        <div>
                            <div style="float:left; font-size:11px; margin-top:-9px">
                                <span>&nbsp;</span>
                                <span class="span_bg">&nbsp;足球&nbsp;</span>
                            </div>
                            <a href="#" rel="external">
                            	<div class="gaming" align="center">
                                	<p>正在比赛</p>
                            	</div>
                        	</a>
                        </div>
                        <p>&nbsp;</p>
                    </div>
                </a>
            </div>
            
            <div id="latest_game" hidden="">
            	<a href="EventIndex.html" rel="external">
                    <div style="border:solid 1px #D3E8F1; border-radius:5px">
                        <table width="100%" style="font-size:small">
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image7" runat="server" ImageUrl="~/images/徒步穿越丹霞山.jpg" width="100%" height="150px"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;<font>徒步穿越丹霞山</font></td>
                            </tr>
                            <tr> 
                                <td width="35%">&nbsp;<img src="images/place.png" />&nbsp;广东&nbsp;韶关市</td>
                                <td width="65%"><img src="images/time.png" />&nbsp;2016.11.10</td>
                            </tr>
                        </table>
                        <p></p>
                        <div>
                            <div style="float:left; font-size:11px; margin-top:-9px">
                                <span>&nbsp;</span>
                                <span class="span_bg">&nbsp;全程徒步穿越&nbsp;</span>
                                <span class="span_bg">&nbsp;4人组&nbsp;</span>
                            </div>
                            <a href="#" rel="external">
                            	<div class="sign_up" align="center">
                                	<p>我要报名</p>
                            	</div>
                        	</a>
                        </div>
                        <p>&nbsp;</p>
                    </div>
                </a>
                
                <a href="EventIndex1.html" rel="external">
                    <div style="border:solid 1px #D3E8F1; border-radius:5px">
                        <table width="100%" style="font-size:small">
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image8" runat="server" ImageUrl="~/images/兰州马拉松急救跑者报名.jpg" width="100%" height="150px" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;<font>兰州马拉松急救跑者报名</font></td>
                            </tr>
                            <tr>
                                <td width="35%">&nbsp;<img src="images/place.png" />&nbsp;甘肃&nbsp;兰州市</td>
                                <td width="65%"><img src="images/time.png" />&nbsp;2016.06.10</td>
                            </tr>
                        </table>
                        <p></p>
                        <div>
                            <div style="float:left; font-size:11px; margin-top:-9px">
                                <span>&nbsp;</span>
                                <span class="span_bg">&nbsp;全马急救跑者&nbsp;</span>
                                <span class="span_bg">&nbsp;半马急救跑者&nbsp;</span>
                            </div>
                            <a href="Sign1.html" rel="external">
                            	<div class="sign_up" align="center">
                                	<p>我要报名</p>
                            	</div>
                        	</a>
                        </div>
                        <p>&nbsp;</p>
                    </div>
                </a>
                
                <a href="EventIndex3.html" rel="external">
                    <div style="border:solid 1px #D3E8F1; margin-top:5px; border-radius:5px">
                        <table width="100%" style="font-size:small">
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image9" runat="server" ImageUrl="~/images/2016第二届华贸杯红花湖群英马拉松赛.jpg" width="100%" height="150px" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;<font>2016第二届华贸杯红花湖群英马拉松赛</font></td>
                            </tr>
                            <tr>
                                <td width="35%">&nbsp;<img src="images/place.png" />&nbsp;广东&nbsp;惠州市</td>
                                <td width="65%"><img src="images/time.png" />&nbsp;2016.01.10</td>
                            </tr>
                        </table>
                        <p></p>
                        <div>
                            <div style="float:left; font-size:11px; margin-top:-9px">
                                <span>&nbsp;</span>
                                <span class="span_bg">&nbsp;半程马拉松&nbsp;</span>
                            </div>
                            <a href="#" rel="external">
                            	<div class="over" align="center">
                                	<p>比赛结束</p>
                            	</div>
                        	</a>
                        </div>
                        <p>&nbsp;</p>
                    </div>
                </a>
            </div>
            
            <div id="local_game" hidden="">
            	<a href="EventIndex.html" rel="external">
                    <div style="border:solid 1px #D3E8F1; border-radius:5px">
                        <table width="100%" style="font-size:small">
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image10" runat="server" ImageUrl="~/images/徒步穿越丹霞山.jpg"  width="100%" height="150px"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;<font>徒步穿越丹霞山</font></td>
                            </tr>
                            <tr>
                                <td width="35%">&nbsp;<img src="images/place.png" />&nbsp;广东&nbsp;韶关市</td>
                                <td width="65%"><img src="images/time.png" />&nbsp;2015.11.10</td>
                            </tr>
                        </table>
                        <p></p>
                        <div>
                            <div style="float:left; font-size:11px; margin-top:-9px">
                                <span>&nbsp;</span>
                                <span class="span_bg">&nbsp;全程徒步穿越&nbsp;</span>
                                <span class="span_bg">&nbsp;4人组&nbsp;</span>
                            </div>
                            <a href="#" rel="external">
                            	<div class="sign_up" align="center">
                                	<p>我要报名</p>
                            	</div>
                        	</a>
                        </div>
                        <p>&nbsp;</p>
                    </div>
                </a>
            </div>
        </div>
        
        <div class="nav-glyphish-example" data-role="footer" data-position="fixed" style="margin-bottom:-1px">
        	<div class="nav-glyphish-example" data-role="navbar">
                <ul>
                    <li><a class="event_light" href="#event_page" data-transition="flip" data-icon="event" class="ui-btn-active">赛事</a></li>        
                    <li><a class="eventcircle" href="#eventcircle_page" data-transition="flip" data-icon="eventcircle">赛圈</a></li>
                    <li><a class="club" href="#club_page" data-transition="flip" data-icon="club">俱吧</a></li>      
                    <li><a class="person" href="#user_page" data-icon="person" data-transition="flip">个人</a></li>   
                </ul>
        	</div>
        </div>
    </div>
    
    
    <div data-role="page" data-theme="a" id="eventcircle_page">
        <div data-role="navbar">
            <ul>
                <li><a id="release" href="#">发布赛事</a></li>        
                <li><a id="participate" href="#">参与赛事</a></li>
            </ul>
            <ul>
                <li class="release" style="background-color:#208EF4; height:2px"></li>
                <li class="participate" style="background-color:#949494; height:2px"></li>
            </ul>
        </div>
        <div data-role="content">
        	<div id="release_game">
           		 <a href="#released_page" data-transition="slideup">
                     <div style="border:solid 1px #D3E8F1; border-radius:5px">
                        <table width="100%" style="font-size:small">
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image11" runat="server" ImageUrl="~/images/top.png" width="100%" height="150px"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;<font>第二届完美杯足球赛</font></td>
                            </tr>
                            <tr>
                                <td width="35%">&nbsp;<img src="images/place.png" />&nbsp;广东&nbsp;深圳市</td>
                                <td width="65%"><img src="images/time.png" />&nbsp;2016.12.12</td>
                            </tr>
                        </table>
                        <p></p>
                        <div>
                            <div style="float:left; font-size:11px; margin-top:-5px">
                                <span>&nbsp;</span>
                                <span class="span_bg">&nbsp;常规赛&nbsp;</span>
                            </div>
                            <a href="#" rel="external">
                            	<div class="audit" align="center">
                                	<p>待审核</p>
                            	</div>
                        	</a>
                        </div>
                        <p>&nbsp;</p>
                    </div>
                </a>
                <p style="margin-top:5px"></p>
                <a href="#release_page" data-transition="slideup"><div style="color:#FFFFFF; background-color:#6dafe3; font-size:80px; font-weight:bolder" align="center">+<p style="font-size:30px; font-weight:600; margin-top:-20px">发布新赛事</p></div></a>
            </div>
            <div id="participate_game" hidden="">
                <a href="EventIndex.html" rel="external">
                    <div style="border:solid 1px #D3E8F1; border-radius:5px">
                        <table width="100%" style="font-size:small">
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image12" runat="server" ImageUrl="~/images/徒步穿越丹霞山.jpg" width="100%" height="150px"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;<font>徒步穿越丹霞山</font></td>
                            </tr>
                            <tr>
                                <td width="35%">&nbsp;<img src="images/place.png" />&nbsp;广东&nbsp;韶关市</td>
                                <td width="65%"><img src="images/time.png" />&nbsp;2016.11.10</td>
                            </tr>
                        </table>
                        <p></p>
                        <div>
                            <div style="float:left; font-size:11px; margin-top:-9px">
                                <span>&nbsp;</span>
                                <span class="span_bg">&nbsp;全程徒步穿越&nbsp;</span>
                                <span class="span_bg">&nbsp;4人组&nbsp;</span>
                            </div>
                            <a href="#" rel="external">
                            	<div class="over" align="center">
                                	<p>比赛结束</p>
                            	</div>
                        	</a>
                        </div> 
                        <p>&nbsp;</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="nav-glyphish-example" data-role="footer" data-position="fixed" style="margin-bottom:-1px">
        	<div class="nav-glyphish-example" data-role="navbar">
                <ul>
                    <li><a class="event" href="#event_page" data-transition="flip" data-icon="event">赛事</a></li>        
                    <li><a class="eventcircle_light" href="#eventcircle_page" data-transition="flip" data-icon="eventcircle" class="ui-btn-active">赛圈</a></li>        
                    <li><a class="club" href="#club_page" data-transition="flip" data-icon="club">俱吧</a></li>
                    <li><a class="person" href="#user_page" data-icon="person" data-transition="flip">个人</a></li>   
                </ul>
        	</div>
        </div>
    </div>
    
    <div data-role="page" data-theme="a" id="club_page">
    	<div data-role="header">
        	<div data-role="navbar">
            <ul>
                <li><a id="city" style="color:#6dafe3">同城</a></li>
                <li><a id="active">活跃</a></li>
                <li><a id="star">星级</a></li>
            </ul>
            <ul>
                <li class="city" style="background-color:#208EF4; height:2px"></li>
                <li class="active" style="background-color:#949494; height:2px"></li>
                <li class="star" style="background-color:#949494; height:2px"></li>
            </ul>
        </div>
        </div>
        <div data-role="content">
        	<a href="#create_page" data-transition="slidedown"><div align="center" style="width:100%; height:35px; background-color:#00A3FF; color:#FFFFFF; margin-top:-33px; margin-bottom:20px; border-radius:5px;"><p style="font-size:24px; font-weight:600;">创建俱乐部</p></div></a>
        	<div id="city_page">
            	<ul data-role="listview" data-inset="true" style="margin-top:-12px">
                    <li data-icon="false">
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image13" runat="server" ImageUrl="~/images/未标题-1.jpg" />
                                    <h3 style="margin-top:auto;">韶关非常户外运动俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">非常户外，快乐精彩</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image14" runat="server" ImageUrl="~/images/未标题-2.jpg" />
                                    <h3 style="margin-top:auto;">狂野户外俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">自然 运动 健康 友情 安全 环保 自助 互助</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image15" runat="server" ImageUrl="~/images/未标题-3.jpg" /> 
                                    <h3 style="margin-top:auto;">易出行俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">提供韶关本土户外活动，全面优质服务</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image16" runat="server" ImageUrl="~/images/未标题-4.jpg" /> 
                                    <h3 style="margin-top:auto;">南雄烈风户外骑行俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">爱户外，动起来</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image17" runat="server" ImageUrl="~/images/未标题-5.jpg" />
                                    <h3 style="margin-top:auto;">韶关户外游</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">我秀我户外走进大自然 爱护大自然 你我同行</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image18" runat="server" ImageUrl="~/images/未标题-6.jpg" />
                                    <h3 style="margin-top:auto;">广发韶关碧桂园社区支行</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">广发有你有我生活更精彩！</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image19" runat="server" ImageUrl="~/images/未标题-7.jpg" />
                                    <h3 style="margin-top:auto;">韶关户外俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">广交户外爱好者</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image20" runat="server" ImageUrl="~/images/未标题-8.jpg" />
                                    <h3 style="margin-top:auto;">随风·户外团队</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">户外运动，安全第一</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image21" runat="server" ImageUrl="~/images/未标题-9.jpg" />
                                    <h3 style="margin-top:auto;">韶关捷安特骑乐俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">骑乐无穷</p>
                                </a>
                            </li>
                        </ul>         
                	</li>
                </ul>          
            </div>
            
            <div id="active_page" hidden="">
            	<ul data-role="listview" data-inset="true" style="margin-top:-12px">
                    <li data-icon="false">
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image22" runat="server" ImageUrl="~/images/未标题-2.jpg" /> 
                                    <h3 style="margin-top:auto;">狂野户外俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">自然 运动 健康 友情 安全 环保 自助 互助</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image23" runat="server" ImageUrl="~/images/未标题-9.jpg" /> 
                                    <h3 style="margin-top:auto;">韶关捷安特骑乐俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">骑乐无穷</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image24" runat="server" ImageUrl="~/images/未标题-1.jpg" />
                                    <h3 style="margin-top:auto;">韶关非常户外运动俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">非常户外，快乐精彩</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image25" runat="server" ImageUrl="~/images/未标题-4.jpg" />
                                    <h3 style="margin-top:auto;">南雄烈风户外骑行俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">爱户外，动起来</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image26" runat="server" ImageUrl="~/images/未标题-6.jpg" />  
                                    <h3 style="margin-top:auto;">广发韶关碧桂园社区支行</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">广发有你有我生活更精彩！</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image27" runat="server" ImageUrl="~/images/未标题-3.jpg" /> 
                                    <h3 style="margin-top:auto;">易出行俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">提供韶关本土户外活动，全面优质服务</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image28" runat="server" ImageUrl="~/images/未标题-5.jpg" />   
                                    <h3 style="margin-top:auto;">韶关户外游</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">我秀我户外走进大自然 爱护大自然 你我同行</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image29" runat="server" ImageUrl="~/images/未标题-8.jpg" />  
                                    <h3 style="margin-top:auto;">随风·户外团队</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">户外运动，安全第一</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image30" runat="server" ImageUrl="~/images/未标题-7.jpg" />  
                                    <h3 style="margin-top:auto;">韶关户外俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">广交户外爱好者</p>
                                </a>
                            </li>
                        </ul>    
                	</li>
                </ul>          
            </div>
            
            <div id="star_page" hidden="">
            	<ul data-role="listview" data-inset="true" style="margin-top:-12px">
                    <li data-icon="false">
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image31" runat="server" ImageUrl="~/images/未标题-9.jpg" />  
                                    <h3 style="margin-top:auto;">韶关捷安特骑乐俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">骑乐无穷</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image32" runat="server" ImageUrl="~/images/未标题-9.jpg" />
                                    <h3 style="margin-top:auto;">随风·户外团队</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">户外运动，安全第一</p>
                                </a>
                            </li>
                        </ul> 
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image33" runat="server" ImageUrl="~/images/未标题-7.jpg" />  
                                    <h3 style="margin-top:auto;">韶关户外俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">广交户外爱好者</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image34" runat="server" ImageUrl="~/images/未标题-6.jpg" /> 
                                    <h3 style="margin-top:auto;">广发韶关碧桂园社区支行</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">广发有你有我生活更精彩！</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image35" runat="server" ImageUrl="~/images/未标题-5.jpg" /> 
                                    <h3 style="margin-top:auto;">韶关户外游</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">我秀我户外走进大自然 爱护大自然 你我同行</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image36" runat="server" ImageUrl="~/images/未标题-4.jpg" />   
                                    <h3 style="margin-top:auto;">南雄烈风户外骑行俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">爱户外，动起来</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image37" runat="server" ImageUrl="~/images/未标题-3.jpg" />   
                                    <h3 style="margin-top:auto;">易出行俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">提供韶关本土户外活动，全面优质服务</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image38" runat="server" ImageUrl="~/images/未标题-2.jpg" />   
                                    <h3 style="margin-top:auto;">狂野户外俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">自然 运动 健康 友情 安全 环保 自助 互助</p>
                                </a>
                            </li>
                        </ul>
                        <ul data-role="listview" data-inset="true">
                            <li data-icon="false">
                                <a href="Club.html" rel="external">
                                    <asp:Image ID="Image39" runat="server" ImageUrl="~/images/未标题-1.jpg" />  
                                    <h3 style="margin-top:auto;">韶关非常户外运动俱乐部</h3>
                                    <div align="center"><p>+&nbsp;<small>加入</small></p></div>
                                    <p style="margin-top:25px; margin-bottom:-30px">非常户外，快乐精彩</p>
                                </a>
                            </li>
                        </ul>  
                	</li>
                </ul>            
            </div>
        </div>
        <div class="nav-glyphish-example" data-role="footer" data-position="fixed" style="margin-bottom:-1px">
        	<div class="nav-glyphish-example" data-role="navbar">
                <ul>
                    <li><a class="event" href="#event_page" data-transition="flip" data-icon="event">赛事</a></li>        
                    <li><a class="eventcircle" href="#eventcircle_page" data-transition="flip" data-icon="eventcircle">赛圈</a></li>        
                    <li><a class="club_light" href="#club_page" data-transition="flip" data-icon="club" class="ui-btn-active">俱吧</a></li>
                    <li><a class="person" href="#user_page" data-icon="person" data-transition="flip">个人</a></li>   
                </ul>
        	</div>
        </div>
    </div>
      
    <div data-role="page" data-theme="a" id="user_page">
        <div data-role="header" style="margin-top:-1px">
            <img alt="userbackground" src="images/bg1.png" width="100%" height="150px">
            <div class="user">
                <div class="user_head" title="我的头像">
                    <asp:Image ID="Image40" runat="server" ImageUrl="~/images/userhead.png" width="100%" height="100%" style="border-radius:50%"/></div>
                <div class="username"><h4 style="color:#000000">&nbsp;大赛易</h4></div>
            </div>
        </div> 
        <div>
            <br>
            <table width="100%" rules="rows" cellpadding="5">
                <tr onclick="my_data();">
                    <td><img src="images/ziliao.png" class="person_img" /></td>
                    <td width="96%">个人资料</td>
                    <td width="3%">&nbsp;</td>
                    <td width="10px">&gt;</td>
                </tr>
                <tr onclick="my_event();">
                    <td><img src="images/saiquan.png" class="person_img" /></td>
                    <td>我的赛圈</td>
                    <td><a style="color:#F00; text-shadow:2px 2px 5px orange,-2px 2px 5px green;">new</a></td>
                    <td>&gt;</td>
                </tr>
                <tr onclick="my_club();">
                    <td><img src="images/shoucang.png" class="person_img" /></td>
                    <td>我的俱乐部</td>
                    <td></td>
                    <td>&gt;</td>
                </tr>
                <tr onclick="my_integral();">
                    <td><img src="images/jifen.png" class="person_img" /></td>
                    <td>我的积分</td>
                    <td></td>
                    <td>&gt;</td>
                </tr>
                <tr onclick="my_set();">
                    <td><img src="images/shezhi.png" class="person_img" /></td>
                    <td>我的设置</td>
                    <td></td>
                    <td>&gt;</td>
                </tr>
            </table>
            <br>
        </div>
        <div class="nav-glyphish-example" data-role="footer" data-position="fixed" style="margin-bottom:-1px">
            <div class="nav-glyphish-example" data-role="navbar">
                <ul>
                    <li><a class="event" href="#event_page" data-transition="flip" data-icon="event">赛事</a></li>        
                    <li><a class="eventcircle" href="#eventcircle_page" data-transition="flip" data-icon="eventcircle">赛圈</a></li>
                    <li><a class="club" href="#club_page" data-transition="flip" data-icon="club">俱吧</a></li>        
                    <li><a class="person_light" href="#" data-icon="person" data-transition="flip" class="ui-btn-active">个人</a></li>   
                </ul>
            </div>
        </div>  
	</div>


	<div data-role="page" data-theme="a" id="release_page">
    	<div data-role="header" data-position="fixed" style="margin-top:-1px">
            <a href="#eventcircle_page" data-transition="slidedown" title="返回"><b> < </b></a><h2>发布新赛事申请表</h2><a href="#user_page" class="head_a_user" data-transition="flip"><img src="images/userhead.png" class="head_user" width="34px" height="34px"></a>
            <!--该效果基于头像大小为160x160-->
        </div>
        <div data-role="content">
        	<h3 align="center" style="color:#000000">新赛事申请表</h3>
  			<form>
            	姓名：<br />
                  <asp:TextBox ID="applicant_name" runat="server" Text="请输入真实姓名" onfocus="if(value == defaultValue)
                      {value='';}" onblur="if(!value){value = defaultValue;}" ForeColor="#CCCCCC"></asp:TextBox>
                身份证件编号：<br />
                  <asp:TextBox ID="TextBox17" runat="server" Text="请输入身份证件编号" onfocus="if(value == defaultValue)
                      {value='';}" onblur="if(!value){value = defaultValue;}" ForeColor="#CCCCCC"></asp:TextBox>
                手机号：<br />
                  <asp:TextBox ID="TextBox1" runat="server" Text="请输入手机号码" onfocus="if(value == defaultValue)
                      {value='';}" onblur="if(!value){value = defaultValue;}" ForeColor="#CCCCCC"></asp:TextBox>
                电子邮箱：<br />
                  <asp:TextBox ID="TextBox2" runat="server" Text="请输入邮箱" onfocus="if(value == defaultValue)
                      {value='';}" onblur="if(!value){value = defaultValue;}" ForeColor="#CCCCCC"></asp:TextBox>
                单位全称：<br />
                  <asp:TextBox ID="TextBox3" runat="server" Text="请输入单位全称" onfocus="if(value == defaultValue)
                      {value='';}" onblur="if(!value){value = defaultValue;}" ForeColor="#CCCCCC"></asp:TextBox>
                赛事类别:<br />
                  <asp:DropDownList ID="DropDownList1" runat="server" Enabled="True">
                      <asp:ListItem>足球</asp:ListItem>
                      <asp:ListItem>马拉松</asp:ListItem>
                  </asp:DropDownList>
                赛事全称：<br />
                  <asp:TextBox ID="TextBox4" runat="server" Text="请输入赛事全称" onfocus="if(value == defaultValue)
                      {value='';}" onblur="if(!value){value = defaultValue;}" ForeColor="#CCCCCC"></asp:TextBox>
                所在地：<br />
                  <asp:TextBox ID="TextBox5" runat="server" Text="请输入所在地" onfocus="if(value == defaultValue)
                      {value='';}" onblur="if(!value){value = defaultValue;}" ForeColor="#CCCCCC" ></asp:TextBox>
                赛事规模：<br />
                  <asp:TextBox ID="TextBox6" runat="server" Text="请输入赛事大致规模人数" onfocus="if(value == defaultValue)
                      {value='';}" onblur="if(!value){value = defaultValue;}" ForeColor="#CCCCCC"></asp:TextBox>
				赛事日期：<br />
                  <asp:TextBox ID="TextBox7" runat="server" Text="请输入赛事举办日期" onfocus="if(value == defaultValue)
                      {value='';}" onblur="if(!value){value = defaultValue;}" ForeColor="#CCCCCC"></asp:TextBox>
                赛事简介：<br />
                  <textarea id="event_intro" placeholder="请填写赛事简介" ></textarea>
            </form>
            <asp:Button ID="Button1" runat="server" Text="确认申请" /> 
        </div>
        <div class="nav-glyphish-example" data-role="footer" data-position="fixed" style="margin-bottom:-1px">
        	<div class="nav-glyphish-example" data-role="navbar">
                <ul>
                    <li><a class="event" href="#event_page" data-transition="flip" data-icon="event">赛事</a></li>        
                    <li><a class="eventcircle_light" href="#eventcircle_page" data-transition="flip" data-icon="eventcircle" class="ui-btn-active">赛圈</a></li>        
                    <li><a class="club" href="#club_page" data-transition="flip" data-icon="club">俱吧</a></li>
                    <li><a class="person" href="#user_page" data-transition="flip" data-icon="person">个人</a></li>   
                </ul>
        	</div>
     	</div> 
    </div>

	<div data-role="page" data-theme="a" id="released_page">
    	<div data-role="header" data-position="fixed" style="margin-top:-1px">
            <a href="#eventcircle_page" data-transition="slidedown" title="返回"><b> < </b></a><h2>第二届完美杯足球赛申请表</h2><a href="#user_page" class="head_a_user" data-transition="flip"><img src="images/userhead.png" class="head_user" width="34px" height="34px"></a>
            <!--该效果基于头像大小为160x160-->
        </div>
        <div data-role="content">
        	<h3 align="center" style="color:#000000">第二届完美杯足球赛申请表</h3>
  			<form>
            	姓名：<br />
                  <asp:TextBox ID="TextBox8" runat="server" Text="大赛易"></asp:TextBox>
                身份证件编号：<br />
                  <asp:TextBox ID="TextBox9" runat="server" Text="406507198405305381"></asp:TextBox>
                手机号：<br />
                  <asp:TextBox ID="TextBox10" runat="server" Text="18318337409"></asp:TextBox>
                电子邮箱：<br />
                  <asp:TextBox ID="TextBox11" runat="server" Text="dasaiyi@163.com"></asp:TextBox>
                单位全称：<br />
                  <asp:TextBox ID="TextBox12" runat="server" Text="大赛易体育有限公司"></asp:TextBox>
                赛事类别:<br />
                  <asp:DropDownList ID="DropDownList2" runat="server">
                      <asp:ListItem>足球</asp:ListItem>
                      <asp:ListItem>马拉松</asp:ListItem>
                </asp:DropDownList>
                  <select>
                                <option id="football">足球</option>
                                <option id="marathon">马拉松</option>
                        	</select>
                赛事全称：<br />
                  <asp:TextBox ID="TextBox13" runat="server" Text="第二届完美杯足球赛"></asp:TextBox>
                所在地：<br /> 
                  <asp:TextBox ID="TextBox14" runat="server" Text="广东深圳"></asp:TextBox>
                赛事规模：<br />
                  <asp:TextBox ID="TextBox15" runat="server" Text="40人"></asp:TextBox>
				赛事日期：<br />
                  <asp:TextBox ID="TextBox16" runat="server" Text="2016-12-12"></asp:TextBox>
                赛事简介：<br />
                 <textarea id="event_intro" placeholder="">暂无</textarea>
            </form>
            <asp:Button ID="Button2" runat="server" Text="确认修改" />  
        </div>
        <div class="nav-glyphish-example" data-role="footer" data-position="fixed" style="margin-bottom:-1px">
        	<div class="nav-glyphish-example" data-role="navbar">
                <ul>
                    <li><a class="event" href="#event_page" data-transition="flip" data-icon="event">赛事</a></li>        
                    <li><a class="eventcircle_light" href="#eventcircle_page" data-transition="flip" data-icon="eventcircle" class="ui-btn-active">赛圈</a></li>        
                    <li><a class="club" href="#club_page" data-transition="flip" data-icon="club">俱吧</a></li>
                    <li><a class="person" href="#user_page" data-transition="flip" data-icon="person">个人</a></li>   
                </ul>
        	</div>
     	</div> 
    </div>
    
    <div data-role="page" data-theme="a" id="create_page">
    	<div data-role="header" data-position="fixed" style="margin-top:-1px">
            <a href="#eventcircle_page" data-transition="slidedown" title="返回"><b> < </b></a><h2>创建俱乐部</h2><a href="#user_page" class="head_a_user" data-transition="flip"><img src="images/userhead.png" class="head_user" width="34px" height="34px"></a>
            <!--该效果基于头像大小为160x160-->
        </div>
        <div data-role="content">
        	<h3 align="center" style="color:#000000">俱乐部创建申请表/h3>
  			<form>
            	俱乐部图标：<br />
                  <asp:FileUpload ID="FileUpload1" runat="server" />
            	名称：<br />
                  <asp:TextBox ID="TextBox18" runat="server" Text="请填写俱乐部名称"></asp:TextBox>
                所在地：<br />
                  <asp:TextBox ID="TextBox19" runat="server" Text="请填写所在地"></asp:TextBox>
                宣言：<br />
                  <asp:TextBox ID="TextBox20" runat="server" Text="请填写俱乐部宣言"></asp:TextBox>
                简介：<br /><textarea id="club_intro" placeholder="请填写俱乐部简介"></textarea>
                申请人姓名：<br />
                  <asp:TextBox ID="TextBox21" runat="server" Text="请填写申请人的姓名"></asp:TextBox>
                联系电话：<br />
                  <asp:TextBox ID="TextBox22" runat="server" Text="请填写申请人的联系电话"></asp:TextBox>
            </form>
                <asp:Button ID="Button3" runat="server" Text="确认创建" />
        </div>
        <div class="nav-glyphish-example" data-role="footer" data-position="fixed" style="margin-bottom:-1px">
        	<div class="nav-glyphish-example" data-role="navbar">
                <ul>
                    <li><a class="event" href="#event_page" data-transition="flip" data-icon="event">赛事</a></li>        
                    <li><a class="eventcircle_light" href="#eventcircle_page" data-transition="flip" data-icon="eventcircle" class="ui-btn-active">赛圈</a></li>        
                    <li><a class="club" href="#club_page" data-transition="flip" data-icon="club">俱吧</a></li>
                    <li><a class="person" href="#user_page" data-transition="flip" data-icon="person">个人</a></li>   
                </ul>
        	</div>
     	</div> 
    </div>
    </form>
</body>
</html>
