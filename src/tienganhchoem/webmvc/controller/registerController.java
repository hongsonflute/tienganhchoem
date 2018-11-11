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


@WebServlet("/registerController")
public class registerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public registerController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			
			Connection cnn=null;
			DBConnection kn=new DBConnection();
			UsersDAO ud=new UsersDAO();
			ResultSet rs=null;
			PreparedStatement ptmt=null;
			
			String fullname=request.getParameter("fullname");
			String email=request.getParameter("email");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			int role=3;
			Users us=new Users(fullname, email,username, password,role);
			
			cnn=kn.KetNoi();
			try {
			
					PreparedStatement ptmt1=cnn.prepareStatement("select *from users where user_email='"+email+"'");
					PreparedStatement ptmt2=cnn.prepareStatement("select *from users where user_name='"+username+"'");
					ResultSet rs1=ptmt1.executeQuery();
					ResultSet rs2=ptmt2.executeQuery();
					if(rs1.next()) {
						request.setAttribute("erro_mail", "Lỗi email đã được đăng ký!");
						RequestDispatcher rd=request.getRequestDispatcher("/view/register.jsp");
						rd.forward(request, response);
					}
					else if(rs2.next()) {
						
						request.setAttribute("erro_username", "Lỗi username đã được đăng ký!");
						RequestDispatcher rd=request.getRequestDispatcher("/view/register.jsp");
						rd.forward(request, response);
					}
					
				else {
						ud.themtaikhoan(us);
						HttpSession ss=request.getSession();
						ss.setAttribute("student", us);
						response.sendRedirect("view/home.jsp");	
				}
			} catch (SQLException e) {
				System.out.print("loi"+e.getMessage());
			}
			
	}
}
