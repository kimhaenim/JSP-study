package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BoardDAO {
	private Connection conn;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/tutoring?"+
					"useUnicode=true&characterEncoding=utf8";
			String dbUser = "root";
			String dbPass = "root";
	
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //db ����
	}
	public int getNext() {
		String SQL = "SELECT BoardNumber FROM BOARD BY BoardNumber DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; //ù ��° �Խù��� ���
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //db ����
	}
	public int write(String Title, String ID, String Contents) {
		String SQL = "INSERT INTO BOARD VALUS (?,null,?,?,?,?,0,0)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, ID);
			pstmt.setString(3, Title);
			pstmt.setString(4, Contents);
			pstmt.setString(5, getDate());
			rs = pstmt.executeQuery();
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //db ����
	}
}
