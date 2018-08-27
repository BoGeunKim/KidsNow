package com.scv.user.controller;

import java.io.File;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.scv.user.dto.UserDTO;
import com.scv.user.impl.IUserDAO;
/**
 * @author jinhy
 * 사용자관련 컨트롤러(회원가입, 수정, 삭제 등등..)
 */
@Controller
public class UserController {

	@Autowired
	private SqlSession sqlSession;
	
	/**
		* 메소드명 : parentSignupForm
		* 작성자 : jinhy
		* 작성일자 : 2018. 8. 27. 오후 12:12:52
		* 메소드설명 : 학부모 회원가입 폼
	*/
	@RequestMapping(value="/parentSignupForm")
	public String parentSignupForm(ModelMap map) {
		
		return "signup/parentSignupForm";
	}
	
	/**
		* 메소드명 : chiefSignupForm
		* 작성자 : jinhy
		* 작성일자 : 2018. 8. 27. 오후 12:12:44
		* 메소드설명 : 원장님 회원가입 폼 
	*/
	@RequestMapping(value="/chiefSignupForm")
	public String chiefSignupForm(ModelMap map) {
		
		return "signup/chiefSignupForm";
	}
	
	/**
		* 메소드명   : teacherSignupForm
		* 작성자     : jinhy
		* 작성일자   : 2018. 8. 27. 오후 1:09:48
		* 메소드설명 : 선생님 회원가입 폼
	*/
	@RequestMapping(value="/teacherSignupForm")
	public String teacherSignupForm(ModelMap map) {
		
		return "signup/teacherSignupForm";
	}
	
	/**
		* 메소드명 : chiefSignup
		* 작성자 : jinhy
		* 작성일자 : 2018. 8. 27. 오후 12:11:51
		* 메소드설명 :  원장님 회원가입
	*/
	@RequestMapping(value="chiefSinup")
	public String chiefSignup(HttpServletRequest request, HttpSession session)
	{
		//=================================================
		//System.out.println(user_id);
		String root = session.getServletContext().getRealPath("/");
		String savePath = "resource/upload/user_profile/";
		
		File dir = new File(root + savePath);

		if (!dir.exists())
			dir.mkdirs();
		
		String encType = "utf-8";
		int maxFileSize = 5 * 1024 * 1024;
		
		try
		{
			MultipartRequest req = null;
			req = new MultipartRequest(request, root+savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
			
			String profile_oriName = req.getOriginalFileName("userFilePath");
			String businessLicense = savePath + req.getOriginalFileName("businessLicense");
			//File saveFile = new File(root + savePath + profile_oriName);
			UserDTO userDto = new UserDTO();
			userDto.setDivCode(Integer.parseInt(req.getParameter("divCode")));
			userDto.setGenderCode(Integer.parseInt(req.getParameter("genderCode")));
			userDto.setUserId(req.getParameter("userId"));
			userDto.setUserPw(req.getParameter("userPw"));
			userDto.setUserName(req.getParameter("userName"));
			userDto.setUserBirth(req.getParameter("userBirth"));
			userDto.setUserTel(req.getParameter("userTel"));
			userDto.setUserFilePath(savePath+profile_oriName);
			
			int schoolCode = Integer.parseInt(req.getParameter("schoolCode"));
			
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("userDto", userDto);
			map.put("schoolCode", schoolCode);
			map.put("businessLicense", businessLicense);
			
			// 회원가입 진행~~
			dao.chiefSignup(map);
		}catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return "회원가입완료페이지이동시키기!!";
	}
	
	/**
		* 메소드명 : teacherSignup
		* 작성자 : jinhy
		* 작성일자 : 2018. 8. 27. 오후 12:12:26
		* 메소드설명 : 선생님회원가입
	*/
	@RequestMapping(value="/teacherSignupForm")
	public String teacherSignup(HttpServletRequest request, HttpSession session) {
		
		//=================================================
		//System.out.println(user_id);
		String root = session.getServletContext().getRealPath("/");
		String savePath = "resource/upload/user_profile/";
		
		File dir = new File(root + savePath);

		if (!dir.exists())
			dir.mkdirs();
		
		String encType = "utf-8";
		int maxFileSize = 5 * 1024 * 1024;
		
		try
		{
			MultipartRequest req = null;
			req = new MultipartRequest(request, root+savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
			
			String profile_oriName = req.getOriginalFileName("userFilePath");
			//File saveFile = new File(root + savePath + profile_oriName);
			UserDTO userDto = new UserDTO();
			userDto.setDivCode(Integer.parseInt(req.getParameter("divCode")));
			userDto.setGenderCode(Integer.parseInt(req.getParameter("genderCode")));
			userDto.setUserId(req.getParameter("userId"));
			userDto.setUserPw(req.getParameter("userPw"));
			userDto.setUserName(req.getParameter("userName"));
			userDto.setUserBirth(req.getParameter("userBirth"));
			userDto.setUserTel(req.getParameter("userTel"));
			userDto.setUserFilePath(savePath+profile_oriName);
			
			int schoolCode = Integer.parseInt(req.getParameter("schoolCode"));
			
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("userDto", userDto);
			map.put("schoolCode", schoolCode);
			
			// 회원가입 진행~~
			dao.teacherSignup(map);
		}catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return "회원가입완료페이지이동시키기!!";
	}
	
	/**
	* 메소드명 : parentSignup
	* 작성자 : jinhy
	* 작성일자 : 2018. 8. 27. 오후 13:09:26
	* 메소드설명 : 학부모회원가입
	*/
	@RequestMapping(value="/teacherSignupForm")
	public String parentSignup(HttpServletRequest request, HttpSession session) {
		
		//=================================================
		//System.out.println(user_id);
		String root = session.getServletContext().getRealPath("/");
		String savePath = "resource/upload/user_profile/";
		
		File dir = new File(root + savePath);
	
		if (!dir.exists())
			dir.mkdirs();
		
		String encType = "utf-8";
		int maxFileSize = 5 * 1024 * 1024;
		
		try
		{
			MultipartRequest req = null;
			req = new MultipartRequest(request, root+savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
			
			String profile_oriName = req.getOriginalFileName("userFilePath");
			//File saveFile = new File(root + savePath + profile_oriName);
			UserDTO userDto = new UserDTO();
			userDto.setDivCode(Integer.parseInt(req.getParameter("divCode")));
			userDto.setGenderCode(Integer.parseInt(req.getParameter("genderCode")));
			userDto.setUserId(req.getParameter("userId"));
			userDto.setUserPw(req.getParameter("userPw"));
			userDto.setUserName(req.getParameter("userName"));
			userDto.setUserBirth(req.getParameter("userBirth"));
			userDto.setUserTel(req.getParameter("userTel"));
			userDto.setUserFilePath(savePath+profile_oriName);
			
			int childCode = Integer.parseInt(req.getParameter("childCode"));
			
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("userDto", userDto);
			map.put("childCode", childCode);
			
			// 회원가입 진행~~
			dao.parentSignup(map);
		}catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return "회원가입완료페이지이동시키기!!";
	}
}