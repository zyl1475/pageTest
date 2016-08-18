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

window.onload=function(){ 
	document.getElementById("datatime").innerHTML = datetime;
	//alert(datetime);
	var user = document.getElementById("login").innerHTML;
	if(user != "用户登录" && user != "undefined"){
		document.getElementById("login").innerHTML = "欢迎您，" + user + "&nbsp;&nbsp;&nbsp;&nbsp;" + "<span onclick='logoff();'>注销</span>"
	}else{
		return false;
	}
}

function logoff(){ 
	var log_off = confirm("您确定要执行注销并退出登录吗？");
	if(log_off == true){ 
		//执行退出操作
		document.getElementById("login").innerHTML = "用户登录";
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