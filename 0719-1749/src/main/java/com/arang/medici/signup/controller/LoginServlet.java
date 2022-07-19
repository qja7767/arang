package com.arang.medici.signup.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.arang.medici.signup.User;
import com.arang.medici.signup.UserDao;
import com.arang.medici.signup.UserService;


@WebServlet("/signup/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserService userService;
	
	public void init() {
		userService = new UserService(new UserDao());
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		request.getRequestDispatcher("login.jsp").forward(request, response);		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String passwd = request.getParameter("passwd");
		String koreanName = request.getParameter("koreanName");
		String englishName = request.getParameter("englishName");
		String ssnYear = request.getParameter("ssnYear");
		String ssnMonth = request.getParameter("ssnMonth");
		String ssnDay = request.getParameter("ssnDay");
		String acaBackGround = request.getParameter("acaBackGround");
		String major = request.getParameter("major");
		String careerYear = request.getParameter("careerYear");
		String careerType = request.getParameter("careerType");
		String company = request.getParameter("company");
		String portpolio = request.getParameter("portpolio");
		String mainGenre = request.getParameter("mainGenre");
		String priceAvg = request.getParameter("priceAvg");
		String salesRate = request.getParameter("salesRate");
		String mainArtwork = request.getParameter("mainArtwork");
		String phoneNumber = request.getParameter("phoneNumber");
		String email = request.getParameter("email");
		String sns = request.getParameter("sns");
		
		//요청 파라메터 검증
		//~....
		if(!userService.isValidUser(userId, passwd)) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("userId", userId);
		session.setAttribute("koreanName", koreanName);
		session.setAttribute("englishName", englishName);
		session.setAttribute("ssn", ssnYear + ssnMonth + ssnDay);
		session.setAttribute("acaBackGround", acaBackGround);
		session.setAttribute("major", major);
		session.setAttribute("careerYear", careerYear);
		session.setAttribute("careerType", careerType);
		session.setAttribute("company", company);
		session.setAttribute("portpolio" ,portpolio);
		session.setAttribute("mainGenre", mainGenre);
		session.setAttribute("priceAvg", priceAvg);
		session.setAttribute("salesRate", salesRate);
		session.setAttribute("mainArtwork", mainArtwork);
		session.setAttribute("phoneNumber", phoneNumber);
		session.setAttribute("email", email);
		session.setAttribute("sns", sns);
		
		response.sendRedirect("mypage");
	}

}
