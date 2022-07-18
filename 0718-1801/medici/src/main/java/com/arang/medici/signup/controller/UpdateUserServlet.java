package com.arang.medici.signup.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arang.medici.signup.User;
import com.arang.medici.signup.UserDao;
import com.arang.medici.signup.UserService;


@WebServlet("/signup/update_user.do")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserService userservice;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String passwd = request.getParameter("passwd");
		String koreanName = request.getParameter("koreanName");
		String userId = request.getParameter("userId");
		String englishName = request.getParameter("englishName");
		String ssn = request.getParameter("ssn");
		String acaBackGround = request.getParameter("acaBackGround");
		String major = request.getParameter("major");
		String careerYear = request.getParameter("careerYear");
		String careerType = request.getParameter("careerType");
		String company = request.getParameter("company");
		String mainGenre = request.getParameter("mainGenre");
		String priceAvg = request.getParameter("priceAvg");
		String salesRate = request.getParameter("salesRate");
		String phoneNumber = request.getParameter("phoneNumber");
		String email = request.getParameter("email");
		String sns = request.getParameter("sns");
		
		
		UserService userService = UserService.getInstance();
		userService = new UserService(new UserDao());		
		User user = new User();
		user.setPasswd(passwd);
		user.setKoreanName(koreanName);
		user.setUserId(userId);
		user.setEnglishName(englishName);
		user.setSsn(ssn);
		user.setAcaBackGround(acaBackGround);
		user.setMajor(major);
		user.setCareerYear(careerYear);
		user.setCareerType(careerType);
		user.setCompany(company);
		user.setMainGenre(mainGenre);
		user.setPriceAvg(priceAvg);
		user.setSalesRate(salesRate);
		user.setPhoneNumber(phoneNumber);
		user.setEmail(email);
		user.setSns(sns);
		
		userService.updateUser(user);
		request.setAttribute("user", user);
		
		RequestDispatcher dispatcher = null;
		dispatcher = request.getRequestDispatcher("/signup/update_user.jsp");
		dispatcher.forward(request, response);	
	}


}
