package com.my.web;


import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Autowired
	MemberDao mdao;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		return "home";
	}
	@RequestMapping({"/","/index"})
	public String index() {
		System.out.println("메인");
		return "index";
	}
	
	@RequestMapping("login")
	public String login() {
		System.out.println("로그인");
		return "login";
	}
	@RequestMapping("id_login")
	public String id_login(String id, String password, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("password", password);
		
		int res = mdao.id_login(map);
		
		if(res==1) {
			System.out.println("로그인 성공");
			
			return "index";
		}else {
			System.out.println("로그인 실패");
			return "login";
		}
		
		
	}
	
	@RequestMapping("email_sign_up")
	public String email_sign_up() {
		System.out.println("회원가입");
		
		return "email_sign_up";
	}
	@RequestMapping("insertdo")
	public String insertdo(String id, String email, String password, String tel, String name) {
		System.out.println("회원가입 입력");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("email", email);
		map.put("password", password);
		map.put("tel", tel);
		map.put("name", name);
		mdao.insertdo(map);
		
		
		return "index";
	}
}
