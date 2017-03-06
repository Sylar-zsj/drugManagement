package com.manage.user.util;


import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartFile;


public class UploadController {

	public void upload(HttpServletRequest request,MultipartFile file,String path){
		//获取文件上传的路径
		String toPath=request.getSession().getServletContext().getRealPath("/")+path;
		
		String fileName=file.getOriginalFilename();

		//首先创建目标文件         如果目标文件夹不存在  则一起创建
		File targetFile=new File(toPath,fileName);
		//mkdirs创建所有的目录  包含父级
		 // mkdir创建当前目录  若父级不存在  则无法创建子目录
		if(!targetFile.exists()){
			targetFile.mkdirs();
		}
		
		//现在  开始上传	
		try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	
}
