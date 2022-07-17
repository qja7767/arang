package com.arang.medici.board.cmd;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arang.medici.board.dao.Bdao;
import com.arang.medici.board.dto.Bdto;

public interface BSearch {
	void execute(HttpServletRequest request, HttpServletResponse response);
	Bdao dao = new Bdao();
	ArrayList<Bdto> dtos = dao.list();
	
	
}
