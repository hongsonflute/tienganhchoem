package tienganhchoem.webmvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tienganhchoem.webmvc.dao.DBConnection;
import tienganhchoem.webmvc.dao.UsersDAO;
import tienganhchoem.webmvc.model.Users;

@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection cnn=null;
	PreparedStatement ptmt=null;
	ResultSet rs=null;
	/*DBConnection dbcn=new DBConnection();*/
  
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.print("day la do get");
		response.sendRedirect("view/login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
	String username=request.getParameter("username");
		String password=request.getParameter("password");
		Users u=new Users();
		u.setUser_name(username);
		u.setUser_password(password);
		DBConnection kn=new DBConnection();
		cnn=kn.KetNoi();
		String sql="select*from users where user_name='"+u.getUser_name()+"' and user_password='"+u.getUser_password()+"'";
		try {
			ptmt=cnn.prepareCall(sql);
			rs=ptmt.executeQuery();
			if(rs.next())
			{	
					HttpSession ss=request.getSession();
					ss.setAttribute("username", u.getUser_name());
				
					if(rs.getString("idrole").equals("3"))					
					{	
						ss.setAttribute("student", u);
						response.sendRedirect("view/home.jsp");
					}
					else if(rs.getString("idrole").equals("1")) {
						ss.setAttribute("admin", u);
						response.sendRedirect("view/admin/admin-home.jsp");
					}
					else if(rs.getString("idrole").equals("2"))
					{
						ss.setAttribute("teacher", u);
						response.sendRedirect("view/admin/admin-home.jsp");
					}
					else {
						
						response.sendRedirect("view/home.jsp");
					}
			}
			else
			{
					request.setAttribute("erro_login", "Tên tài khoản hoặc mật khẩu không đúng!");
					RequestDispatcher rd=request.getRequestDispatcher("view/login.jsp");
					rd.forward(request, response);
			}
			
			cnn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		
		
		//phuong thuc sau day dung de checklogin va phan quyen nguoi su dung
		
		/*String username=request.getParameter("username");
		String password=request.getParameter("password");
		Users u=new Users();
		u.setUser_name(username);
		u.setUser_password(password);
		
		String usernameDB=null;
		String passworDB=null;
		String idroleDB=null;
		String sql="select * from users where user_name="+username+" user_password="+password+"";
		
		cnn=dbcn.KetNoi();

		 try 
		 {
			ptmt=cnn.prepareStatement(sql);
			rs=ptmt.executeQuery();
			if(rs.next())
			{	
					response.sendRedirect("/tienganhchobe/view/admin/admin-home.jsp");
			}
			else
			{
					request.setAttribute("erro_login", "Tên tài khoản hoặc mật khẩu không đúng!");
					RequestDispatcher rd=request.getRequestDispatcher("view/login.jsp");
					rd.forward(request, response);
				
			}
			
		 } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
*/
	}
}
	


