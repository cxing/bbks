package com.fang.bbks.modules.social.web;

import java.awt.image.ImageProducer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fang.bbks.common.persistence.JsonResult;
import com.fang.bbks.common.utils.FileUtils;
import com.fang.bbks.common.utils.SessionUtil;
import com.fang.bbks.common.web.BaseController;
import com.fang.bbks.modules.sys.entity.User;

/**
 * @Intro 文件控制管理
 * @author Lee [shouli1990@gmail.com]
 * @Version V0.0.1
 * @Date 2014-5-7
 * @since 下午4:28:35
 */

@Controller
@RequestMapping("/f")
public class ImageController extends BaseController implements
		ApplicationContextAware {
	private static Logger logger = LoggerFactory.getLogger(ImageController.class);
	private ApplicationContext ac;

	@ModelAttribute("tempRepositories")
	public String getRepositorLocaltion(HttpServletRequest request) {
		User u = SessionUtil.getSignInUser(request.getSession());
		if (u == null) {
			return null;
		} else {
			String dir = getAvatarRepositor(u.getId());

			Resource res = ac.getResource(dir);
			if(!res.exists()){
				try {
					res.createRelative(dir);
					return dir;
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			return getBaseRepository();
		}
	}

	@RequestMapping(value="/uploadImage",headers = "content-type=multipart/*",produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String updateAvatar(
			HttpServletRequest request,
			@RequestParam(value="Filedata", required=false) MultipartFile imageFile,
			@ModelAttribute("tempRepositories") String tempRepositories,
			Model model){
				
		JsonResult jr = new JsonResult();
		if(tempRepositories == null){
			//未登录
			jr.setIsSuccess(false);
			jr.setMessage("请登录后上传文件!");
			return jr.toJson(jr);
		}
		String orgName = imageFile.getOriginalFilename();
		String newName = getNewFileName(orgName);
		Resource res = ac.getResource(tempRepositories);
		
		try{
		
			File file = res.getFile();
			if(!file.exists()){
				FileUtils.createDirectory(file.getPath());
				file = new File(file.getPath());
			}
			String storagePath = new StringBuffer(file.getPath()).append(File.separator).append(newName).toString();
			file = new File(storagePath);
			if(!file.exists()){
				FileUtils.createFile(storagePath);
			}
			//this.copyFile(imageFile.getInputStream(), storagePath);
			imageFile.transferTo(file);
			
			jr.setIsSuccess(true);
			
			String imgPath = new StringBuffer("http://").append(request.getServerName()).append(":")
					.append(request.getServerPort()).append("/").append(request.getContextPath())
					.append("/").append(tempRepositories).append("/").append(newName)
					.toString();
			
			jr.setObj(imgPath);
			jr.setMessage("上传文件成功！");
			
		}catch(FileNotFoundException e){
			e.printStackTrace();
			logger.error("文件上传失败！{},{}", e.getMessage(),e);
			jr.setIsSuccess(false);
			jr.setMessage("文件上传失败！");
		} catch (IOException e) {
			e.printStackTrace();
			
		}
		
		return jr.toJson(jr);
	}


	@Override
	public void setApplicationContext(ApplicationContext ac)
			throws BeansException {
		this.ac = ac;
	}
}