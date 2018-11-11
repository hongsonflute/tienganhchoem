package tienganhchoem.webmvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import tienganhchoem.webmvc.model.Lession;

public class LessionDAO {
	Connection cnn=null;
	ResultSet rs=null;
	PreparedStatement ptmt=null;
	
	public boolean thembaihoc(Lession les)
	{
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="insert into lession (idlession_type,lession_title,lession_content,lession_describe,lession_images) values(?,?,?,?,?)";
		try {
			ptmt=cnn.prepareStatement(sql);
			ptmt.setInt(1,les.getLessionTypeID());
			ptmt.setString(2, les.getLessionTitle());
			ptmt.setString(3, les.getLessionContent());
			ptmt.setString(4, les.getLessionDescribe());
			ptmt.setString(5, les.getLessionImages());
			ptmt.executeUpdate();
			cnn.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
}
