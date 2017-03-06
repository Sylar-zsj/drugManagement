$(function(){
	$("#file_name").change(function(){
		var name=$("#file_name").val();
		$("#filename").val(name);
	});
});