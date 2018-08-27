package com.scv.common.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.scv.user.dto.UserDTO;
import com.scv.user.impl.IUserDAO;

public class UserValidator implements Validator
{

	@Override
	public boolean supports(Class<?> arg0)
	{
		return IUserDAO.class.isAssignableFrom(arg0);
	}

	@Override
	public void validate(Object obj, Errors errors)
	{
		UserDTO user = (UserDTO) obj;
		
		// 아이디 유효성 체크
		String userId = user.getUserId();
        if(userId == null || userId.trim().isEmpty()) {
            System.out.println("회원 아이디를 입력하세요.");
            errors.rejectValue("id", "공백오류");
        }
        
        // 이름 유효성 체크
        String userName = user.getUserName();
        if(userName == null || userName.trim().isEmpty()) {
            System.out.println("회원 이름을 입력하세요.");
            errors.rejectValue("name", "공백오류");
        }
	}

}
