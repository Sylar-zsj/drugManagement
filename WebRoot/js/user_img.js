$(function(){
	//从本地服务器获取图片 
	$.ajax({
		url:"user_getPic.action",
		type:"GET",
		async:"false",
		success:function(data){
			if("" != data && null != data){
				$(".userPic").attr("src",data);
			}else{
				$(".userPic").attr("src","images/1.jpg");
			}
		}
	});
	
	
});