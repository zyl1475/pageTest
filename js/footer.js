// JavaScript Document
$(function(){
	/*var theheight = window.innerHeight;
	var footerdiv = $(".footer");
	if(theheight>890){
		var nheight = theheight - 890;
		footerdiv.before("<div id='nonediv' style='width:100%;border:0;height:"+nheight+"px;'></div>");
		this_height = theheight;
	}else{
		return false;
	}*/
	var theheight = window.innerHeight;
	var footerdiv = $(".footer");
	var nonediv = $("#nonediv");
	try{
		nonediv.remove();
	}
	catch(e){
		
	}
	var content_height = $(".actual_content").height();
	var dis_height = $(".actual_content").attr("dispaly");
	if(content_height <= 400 && dis_height != "none"){
		if(theheight>890){
			var nheight = theheight - 890;
			footerdiv.before("<div id='nonediv' style='width:100%;border:0;height:"+nheight+"px;'></div>");
		}else{
			
		}
	}else{
		var nc_height = content_height - 400;
		footerdiv.before("<div id='nonediv' style='width:100%;border:0;height:"+nc_height+"px;'></div>");
	}
});