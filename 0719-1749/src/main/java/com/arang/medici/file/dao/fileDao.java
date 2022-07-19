package com.arang.medici.file.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.arang.medici.signup.DataSource;
import com.arang.medici.signup.NamingService;

public class fileDao {
	private DataSource dataSource;
	
	public fileDao(){
		NamingService namingService = NamingService.getInstance();
		dataSource = (DataSource)namingService.getAttribute("dataSource");	
	}


	
	public int upload(String fileName, String fileRealName) {
		String sql = "INSERT INTO FILE VALUES (?, ?)";
		try {
			Connection con = null;
			PreparedStatement pstmt = null;	
			try {
				con = dataSource.getConnection();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1,  fileName);
				pstmt.setString(2,  fileRealName);
				return pstmt.executeUpdate();
			} finally {
				dataSource.close(pstmt, con);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} return -1;	
	}
	
}

