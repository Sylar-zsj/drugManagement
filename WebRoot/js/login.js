$(function(){
	
	//更换验证码
	$("#checkImg").click(function(){
		this.src="checkImg.action?time="+new Date().getTime();
	});
	
	
	
	//提交
	$(".btn").click(function(){
		var checkcode=$("#checkcode").val();
		var u_name=$("#u_name").val();
		var u_password=$("#u_password").val();
		$.ajax({
			url:"user_login.action",
			type:"GET",
			data:{"u_name":u_name,"u_password":u_password,"checkcode":checkcode},
			dataType:'json',
			async:false,
			success:function(data){
				if(""==data ||null==data){
					window.location.href="index_manage.action";
				}else{
					$(".errorMsg").html(data);
				}
			}
		});
		
	});
	
});