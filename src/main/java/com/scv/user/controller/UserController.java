package com.scv.user.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.scv.school.impl.ISchoolDAO;
import com.scv.user.dto.UserDTO;
/**
 * @author jinhy
 * 사용자관련 컨트롤러(회원가입, 수정, 삭제 등등..)
 */
@Controller
public class UserController {

	@Autowired
	private SqlSession sqlSession;
	
	// 원장님, 선생님, 학부모 로그인
	@RequestMapping(value="/test19.do")
	public String test(ModelMap map) {
		
		return "test";
	}
	
	// 원장님회원가입 및 가입신청
	@RequestMapping(value="/adminSignUp.do")
	public String signUp(HttpServletRequest request, HttpSession session)
	{
		String root = session.getServletContext().getRealPath("/");
		String savePath = "resource/upload/user_profile/";//+user_id+"/";
		
		File dir = new File(root + savePath);

		if (!dir.exists())
			dir.mkdirs();

		String encType = "utf-8";
		int maxFileSize = 5 * 1024 * 1024;
		
		try
		{
			MultipartRequest req = null;
			req = new MultipartRequest(request, root+savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
			String user_profile = req.getFilesystemName("user_profile");
			String profile_oriName = req.getOriginalFileName("user_profile");
			
			//File saveFile = new File(root + savePath + profile_oriName);
			
			UserDTO uDto = new UserDTO();
			uDto.setDivCode(Integer.parseInt(req.getParameter("divCode")));
			uDto.setGenderCode(Integer.parseInt(req.getParameter("genderCode")));
			uDto.setUserId(req.getParameter("divCode"));
			uDto.setUserPw(req.getParameter("divCode"));
			uDto.setUserName(req.getParameter("divCode"));
			uDto.setUserBirth(req.getParameter("divCode"));
			uDto.setUserTel(req.getParameter("divCode"));
			uDto.setUserFilePath(req.getParameter("divCode"));
			
			req.getParameter("businessLicense");
			
			uDto.setDivCode(req.getParameter("divCode"));
			uDto.setDivCode(req.getParameter("divCode"));
			uDto.setDivCode(req.getParameter("divCode"));
			
			
			
		}catch (Exception e) {
			System.out.println(e.toString());
		}
		
		
		String sIdentification = request.getParameter(sIdentification);
		
		ISchoolDAO sDao = sqlSession.getMapper(ISchoolDAO.class);
		// 식별코드로 어린이집 코드 찾아오기
		int schoolCode = sDao.searchSCode(sIdentification);
		
		return "adminSignUp";
	}
	
	
}