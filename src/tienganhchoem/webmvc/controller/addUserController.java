package tienganhchoem.webmvc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tienganhchoem.webmvc.dao.UsersDAO;
import tienganhchoem.webmvc.model.Users;

@WebServlet("/addUserController")
public class addUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public addUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.sendRedirect("view/admin/add-account.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String fullname=request.getParameter("fullname");
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String role=request.getParameter("role");

		Users u=new Users(fullname, email,username, password,Integer.parseInt(role));
		
		UsersDAO udao=new UsersDAO(); 
		if(udao.themtaikhoan(u)==true)
		{
			request.setAttribute("addUser_ok", "Thêm tài khoản thành công!");
			RequestDispatcher rd=request.getRequestDispatcher("view/admin/add-account.jsp");
			rd.forward(request, response);
		}
		else {
			
			request.setAttribute("addUser_erro", "Thêm tài khoản thất bại!");
			RequestDispatcher rd=request.getRequestDispatcher("view/admin/add-account.jsp");
			rd.forward(request, response);
		}
		
		
	}

}
