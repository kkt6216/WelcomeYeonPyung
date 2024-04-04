/*==========================================
	- 사용자 정의 컨트롤러 클래스
	- 『@Controller』 어노테이션 등록
	- 『@RequestMapping』 어노테이션 등록
 ==========================================*/

package com.test.controller;

import org.springframework.stereotype.Controller;					//-- check~!!!
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;		//-- check~!!!


// ※ Controller Annotation 활용
@Controller												//-- check~!!
public class MainController
{
	@RequestMapping("/hello.yp")
	public String hello(Model model)
	{
		
				
		// 데이터 전달 명령
		
		
		return "/WEB-INF/view/Main.jsp";
	}
	
	
}











































