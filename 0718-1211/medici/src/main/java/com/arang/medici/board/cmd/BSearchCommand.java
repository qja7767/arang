package com.arang.medici.board.cmd;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arang.medici.board.dao.Bdao;
import com.arang.medici.board.dto.Bdto;

public class BSearchCommand implements BCommand {
	public void execute(HttpServletRequest request, HttpServletResponse response){
		String searchField = request.getParameter("f");
		String searchText = request.getParameter("q");
		
		Bdao dao = new Bdao();
		dao.getSearch(searchField, searchText);
		ArrayList<Bdto> dtos = dao.list();
		request.setAttribute("list", dtos);
	};
}
