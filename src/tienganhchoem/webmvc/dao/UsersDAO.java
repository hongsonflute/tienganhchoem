package tienganhchoem.webmvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import tienganhchoem.webmvc.model.Users;

public class UsersDAO {
		
	Connection cnn=null;
	PreparedStatement ptmt=null;
	ResultSet rs=null;
	
	public boolean themtaikhoan(Users u)
	{
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="insert into users (user_fullname,user_email,user_name,user_password,idrole) values(?,?,?,?,?)";
		try {
			ptmt=cnn.prepareStatement(sql);
			ptmt.setString(1,u.getUser_fullname());
			ptmt.setString(2, u.getUser_email());
			ptmt.setString(3, u.getUser_name());
			ptmt.setString(4, u.getUser_password());
			ptmt.setInt(5, u.getUser_roleid());
			ptmt.executeUpdate();
			cnn.close();                                    
			return true;
		} catch (SQLException e) {
			System.out.println("loi"+e.getMessage());
		}
		
		return false;
	}
	
	public boolean checkLogin(Users u)
	{
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="select*from users where user_name='"+u.getUser_name()+"' and user_password='"+u.getUser_password()+"'";
		try {
			ptmt=cnn.prepareStatement(sql);
			rs=ptmt.executeQuery();
			if(rs.next())
			{	
		
					/*HttpSession ss=request.getSession();
					ss.setAttribute("user", u);
					response.sendRedirect("view/home.jsp");*/
				return true;
			}
			else
			{
					/*request.setAttribute("erro_login", "Tên tài khoản hoặc mật khẩu không đúng!");
					RequestDispatcher rd=request.getRequestDispatcher("view/login.jsp");
					rd.forward(request, response);*/
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		
	 return false;
	}
	
	public boolean hienUsers(Users u)
	{
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="select*from users where user_name='"+u.getUser_name()+"'";
		try {
			ptmt=cnn.prepareStatement(sql);
			rs=ptmt.executeQuery();
			while(rs.next())
			{
				u.setUser_fullname(rs.getString("user_fullname"));
				u.setUser_email(rs.getString("user_email"));
				u.setUser_about(rs.getString("user_about"));
				u.setUser_address(rs.getString("user_address"));
				u.setUser_country(rs.getString("user_country"));
				u.setUser_sex(rs.getInt("user_sex"));
				u.setUser_city(rs.getString("user_city"));
				u.setUser_age(rs.getInt("user_age"));
				u.setUser_phone(rs.getString("user_phone"));
				
				ptmt.executeQuery();
				cnn.close();
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	public ArrayList<Users> getListUsers(){
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="select*from users";
		try {
			ptmt=cnn.prepareStatement(sql);
			rs=ptmt.executeQuery();
			ArrayList<Users> List=new ArrayList<>();
			while(rs.next())
			{
				Users u=new Users();
				u.setUser_id(rs.getString("iduser"));
				u.setUser_fullname(rs.getString("user_fullname"));
				u.setUser_email(rs.getString("user_email"));
				u.setUser_name(rs.getString("user_name"));
				u.setUser_password(rs.getString("user_password"));
				u.setUser_roleid(rs.getInt("idrole"));
				List.add(u);
			}
			return List;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean deleteUser(String iduser) {
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="delete from users where iduser=?";
		try {
			ptmt=cnn.prepareStatement(sql);
			ptmt.setString(1,iduser);
			ptmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean addProfileUser(Users u)
	{
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="update users set user_fullname=?,user_email=?,"
				+" user_address=?, user_about=?, user_age=?, "
				 +" user_city=?,user_country=?,"
				+" user_sex=?,user_phone=? where user_name='"+u.getUser_name()+"'";
		try {
			ptmt=cnn.prepareStatement(sql);
			ptmt.setString(1, u.getUser_fullname());
			ptmt.setString(2, u.getUser_email());
			ptmt.setString(3, u.getUser_address());
			ptmt.setString(4, u.getUser_about());
			ptmt.setInt(5, u.getUser_age());
			ptmt.setString(6, u.getUser_city());
			ptmt.setString(7, u.getUser_country());
			ptmt.setInt(8, u.getUser_sex());
			ptmt.setString(9, u.getUser_phone());
			ptmt.executeUpdate();
			cnn.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public Users getProfileUser (Users u,String username) {
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="select* from users where user_name=?";
		try {
			ptmt=cnn.prepareStatement(sql);
			ptmt.setString(1, username);
			rs=ptmt.executeQuery();
			if(rs.next()) {
				u.setUser_fullname(rs.getString("user_fullname"));
				u.setUser_email(rs.getString("user_email"));
				u.setUser_about(rs.getString("user_about"));
				u.setUser_address(rs.getString("user_address"));
				u.setUser_country(rs.getString("user_country"));
				u.setUser_sex(rs.getInt("user_sex"));
				u.setUser_city(rs.getString("user_city"));
				u.setUser_age(rs.getInt("user_age"));
				u.setUser_phone(rs.getString("user_phone"));
				cnn.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	
	public boolean changeRole(Users u)
	{
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="update users set idrole="+u.getUser_roleid()+" where iduser="+u.getUser_id()+"";
		
		try {
			ptmt=cnn.prepareStatement(sql);
			//ptmt.setInt(1, u.getUser_roleid());
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
