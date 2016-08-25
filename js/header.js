// JavaScript Document
//日期开始
var now_date = new Date();
var year = now_date.getFullYear();
var month = now_date.getMonth();
var date = now_date.getDate();
var day = now_date.getDay();
var truemonth = month+1;
var trueday = "";
if(day==0){
	trueday = "日";
}else if(day==1){
	trueday = "一";
}else if(day==2){
	trueday = "二";
}else if(day==3){
	trueday = "三";
}else if(day==4){
	trueday = "四";
}else if(day==5){
	trueday = "五";
}else if(day==6){
	trueday = "六";
}
var datetime = year+"年"+truemonth+"月"+date+"日"+" "+"星期"+trueday;
//日期结束

//加入收藏开始
//现今浏览器安全限制基本无法一键收藏
function add_bookmarks(){
	var siteUrl = window.location;
	var siteName = document.title;
	var error = "对不起，您的浏览器暂不支持加入收藏功能，请使用 Ctrl+D 快捷键进行添加操作！";
	if(document.all){ 
		try{
			window.external.addFavorite(siteUrl,siteName);
		}catch(e){
			alert(error);
			return false;
		}
	}else if(window.sidebar){
		try{
			window.sidebar.addPanel(siteName, siteUrl,'');
		}catch(e){
			alert(error);
			return false;
		}
	}else{
		alert(error);
		return false;
	}
}
//加入收藏结束

$(function(){
	document.getElementById("datatime").innerHTML = datetime;
	
	//登录函数
	function login(){
		var user = $("#user").val();
		var pass = $("#pass").val();
		var btn = $("#login_btn");
		if(user == "" && user.length == 0 && pass == "" && pass.length == 0){
			alert("请输入账号与密码");
			return false;
		}else if(user == "" && user.length == 0){
			alert("请输入账号");
			return false;
		}else if(pass == "" && pass.length == 0){
			alert("请输入密码");
			return false;
		}else{
			btn.html("<img src='images/loading.gif'>");//提交等待交互
			//执行提交用户名与密码
			
			
			
			
			$(".login_box").attr("style","display:none");
			$(".top_right").html("<span id='username'>欢迎您，" + user + "&nbsp;&nbsp;&nbsp;&nbsp;</span>" + "<span onclick='logoff();'>注销</span>");
			//判断是否勾选免登陆
			var remember = $("#remember").attr("checked");
			if (remember == "checked") {
				$.cookie("myuser", user, { expires: 7 });
				$.cookie("mypass", pass, { expires: 7 });
				$.cookie("remember", "checked", { expires: 7 });
			} else {
				$.cookie("myuser", null);
				$.cookie("mypass", null);
				$.cookie("remember", null);
			}
			//清除输入框密码
			$("#pass").val("");
		}
	}
	
	//悬浮显示登录框
	$("#login").hover(function(){
		$(".login_box").attr("style","display:block");
	});
	$(".login_box").hover(function(){
		$(".login_box").attr("style","display:block");
	},function(){
		$(".login_box").attr("style","display:none");
	});
	$(".login_box").click(function(){
		$(".login_box").attr("style","display:block");
	});
	
	//鼠标点击调用登录函数
	$("#login_btn").click(function(){
		login();
	});
	//键盘回车调用登录函数
	$("#login_btn").keydown(function(){
		if(event.keyCode == 13){
			login();
		}
	});
	
	//获取cookie自动登录
	var usercookie = $.cookie("myuser");
	var passcookie = $.cookie("mypass");
	var remembercookie = $.cookie("remember");
	var remember = $("#remember");
	if (remembercookie == "checked") {
		remember.attr("checked", "checked");
		if(usercookie,passcookie != null){
			$("#user").val(usercookie);
			$("#pass").val(passcookie);
			login();
			if(user != "" || user != null){
				$.cookie("myuser", user, { expires: 365 });
			}
		}else{
			return false;
		}
	}else {
		remember.removeAttr("checked");
	}
});

function showloginbox(){
	$("#login").hover(function(){
		$(".login_box").attr("style","display:block");
		$("#login_btn").html("登录");
		if($.cookie("remember")!= "checked" || $.cookie("remember") == null){
			$("#pass").val("");
			$.cookie("mypass", null);
		}
	});
	$(".login_box").hover(function(){
		$(".login_box").attr("style","display:block");
	},function(){
		$(".login_box").attr("style","display:none");
	});
	$(".login_box").click(function(){
		$(".login_box").attr("style","display:block");
	});
}

//判断免登陆是否勾选
var flag = "";
var remember = $("#remember");
if (remember.attr("checked") == "checked") {
	flag = true;
}else{
	flag = false;
}
function checkbox(e) {
	e.checked = flag;
	flag = !flag;
	if (flag) {
		$("#remember").removeAttr("checked");
	} else {
		$("#remember").attr("checked", "checked");
	}
}

function logoff(){ 
	var log_off = confirm("您确定要执行注销并退出登录吗？");
	if(log_off == true){ 
		//执行退出操作
		$.cookie("mypass", null);
		$(".top_right").html("<span id='login'>用户登录</span>");
		showloginbox();
	}else{
		return false;
	}
} 

var temp = "";
function tosearch(){
	var search_value = $("#search_bar").val();
	if(search_value != "" && search_value.length != 0){
		if(temp != search_value){
			//执行搜索操作
			
		}else{
			return false;
		}
		temp = search_value;
		return true;
	}else{
		alert("请输入关键字进行搜索！");
		return false;
	}
}