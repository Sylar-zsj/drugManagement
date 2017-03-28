package com.manage.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;


public class fileUpload {
	
	public boolean upload(String Dir,String dateString,File file,String fileFileName,String fileFileContentType){
		boolean flag=true;
		File saveDir=new File(Dir);
		//若文件夹不存在 则创建
		if(!saveDir.exists()){  
			saveDir.mkdirs();  
        }
		String targetDir=Dir+"\\"+dateString+fileFileName;
		try {
			OutputStream os=new FileOutputStream(targetDir);
		//获取图片信息
			InputStream is= new FileInputStream(file);
			byte[] buff=new byte[1024];
			int len=-1;
			while((len=is.read(buff)) !=-1){
				os.write(buff,0,len);
			}
			is.close();
			os.flush();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			flag=false;
		} catch (IOException e) {
			e.printStackTrace();
			flag=false;
		}
		return flag;
	}

}
