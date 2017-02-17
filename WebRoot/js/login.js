$(function(){
	$("#checkImg").click(function(){
		this.src="checkImg.action?time="+new Date().getTime();
	});
	
	var u_name=$("#u_name").val();
	
	var u_password=$("#u_password").val();
	var checkcode=$("#checkcode").val();
	$(".btn").click(function(){
		$.ajax({
			url:'user_login.action',
			type:'GET',
			data:{'u_name':u_name,"u_name":u_name,'checkcode':checkcode},
			dataType:json,
			success:function(data){
				$(".errorMsg").val(data.errorMessage);
			}
		});
	});
});