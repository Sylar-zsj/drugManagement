$(function(){
	var img_name=null;
	$("#file").change(function(){
		img_name=$("#file").val();
		$("#filename").val(img_name);
	});
	
	$("#u_name").focus(function(){
		$("#u_name").val("");
	}).blur(function(){
		var u_name=$("#u_name").val();
		$.ajax({
			url:"user_checkUsername.action",
			type:"POST",
			data:{"u_name":u_name},
			dataType:'json',
			async:false,
			success:function(data){
				if(""==data ||null==data){
				}else{
					$("#u_name").val(data);
					$("#u_password").val("");
				}
			}			
		});
	});
	
	$(".btn").click(function(){
		var u_name=$("#u_name").val();
		var u_password=$("#u_password").val();
		//var myFile = $("#");
		$.ajaxFileUpload({
			url:"user_addAdmin.action",
			secureuri:"false",
			fileElementId:"file",
			type:"POST",
			data:{"u_name":u_name,"u_password":u_password},
			dataType:'json',
			success:function(data,status){
				alert(data);
				$("#u_name").val("");
				$("#u_password").val("");
				
				
				if(""!=data && null!=data){
					$("#u_name").val(data.errorMessage);
				}else{
				}
			}
		});
	});
});