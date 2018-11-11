package tienganhchoem.webmvc.dao;

import java.sql.*;

public class DBConnection {
	
	Connection cnn=null;
	String urlDB="jdbc:mysql://localhost:3306/tienganhchobe";
	String nameDB="root";
	String passDB="123456";
	
	public Connection KetNoi()
	
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				cnn=DriverManager.getConnection(urlDB, nameDB, passDB);
				if(cnn!=null)
				{
					
					System.out.println("ket noi thanh cong!!!!!");
				}
				
			} catch (SQLException e) {
				
				System.out.println("loi khong ket noi dc DB");
			}
			
			
		} catch (ClassNotFoundException e) {
			System.out.println("loi khong load driver jdbc duoc"+e.getMessage());
		}
		
		return cnn;
	}
	
}
