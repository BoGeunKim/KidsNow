package com.scv.station.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.scv.station.dto.StationDTO;
import com.scv.station.impl.IStationDAO;
/**
 * @author jinhy
 * 정류장관련 컨트롤러
 */
@Controller
public class StationController {

	@Autowired
	private SqlSession sqlSession;
	
	/**
		* 메소드명   : saveStationForm
		* 작성자     : jinhy
		* 작성일자   : 2018. 8. 27. 오후 5:32:36
		* 메소드설명 : 정류장 저장폼으로 이동
	*/
	@RequestMapping(value="saveStationForm")
	public String saveStationForm(ModelMap map) {
		return "station/saveStationForm";
	}
	
	
	/**
		* 메소드명   : saveStation
		* 작성자     : jinhy
		* 작성일자   : 2018. 8. 27. 오후 5:32:55
		* 메소드설명 : 정류장 저장
	*/
	@RequestMapping(value="/saveStation")
	public String saveStation(StationDTO sDto, ModelMap map, HttpSession session) {
		
		// 세션확인~
		if(session.getAttribute("") == null)
		{
			
		}
		IStationDAO dao = sqlSession.getMapper(IStationDAO.class);
		
		// 원장님 코드 가져오기
		// 임시 0저장
		int staffCode = 0;
		
		dao.saveStation(sDto, staffCode);
		
		return "test";
	}
}