package com.board.user.controller;

import java.time.DayOfWeek;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ModelAndViewResolverMethodReturnValueHandler;

import com.board.user.domain.UserVo;
import com.board.user.mapper.UserMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/Users")
public class UserController {
	
	@Autowired
	private UserMapper userMapper;
	
	
	@RequestMapping("/List")
		public ModelAndView list(){
		
		//목록 조회
		List<UserVo> userList = userMapper.getUserList(); 
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList);
		mv.setViewName("users/list");
		
		
		return mv;
	}
	
	// /Users/WriteForm
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm() {
		ModelAndView  mv    = new ModelAndView();
		LocalDateTime today = LocalDateTime.now();
		String        now   = today.format(DateTimeFormatter.ofPattern("yyyy-mm-dd hh:mm:ss:SSSS"));
		DayOfWeek	  wkday = today.getDayOfWeek();
		now				   += " "+wkday;
		mv.addObject("now",now);		
		mv.setViewName("users/write");
	
		return mv;			
	}
	// /Users/Write
	@RequestMapping("/Write")
	public ModelAndView write(UserVo userVo) {
		
		//저장
		userMapper.insertUser(userVo);
		// 데이터를 가지고 이동한다
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Users/List");
		
		return mv;
	}


	// /Users/View
	@RequestMapping("/View")
	public ModelAndView view(UserVo userVo) {
		
		// user_id를 DB에서 조회
		HashMap<String,Object> map = userMapper.getUser(userVo); 
		log.info("vo : {}",map);
		
		// vo.map.get("userid")
				
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", map);	
		mv.setViewName("users/view");
		
		return mv;
	}
	
	// /Users/UpdateForm?userid=
	@RequestMapping("/UpdateForm")
	public ModelAndView updateForm(UserVo userVo) {
		
		// 아이디로 수정할 데이터를 조회
		HashMap<String,Object> map = userMapper.getUser(userVo);
		
		// model에 담는다
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", map);
		
		// 이동
		mv.setViewName("users/updateForm");
		
		return mv;
	
	}
	
	@RequestMapping("/Update")
	public ModelAndView update(UserVo userVo) {
		
		userMapper.updateUser(userVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Users/List");
		
		return mv;
	}
	
	@RequestMapping("/Delete")
	public ModelAndView delete(UserVo userVo) {		
		
		userMapper.deleteUser(userVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Users/List");
		
		return mv;
	}
}