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


@WebServlet("/addProfileUserController")
public class addProfileUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public addProfileUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.sendRedirect("view/admin/admin-profile.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String username=request.getParameter("username");
	
		
		String email=request.getParameter("email");
		String age =request.getParameter("age");
		if(age.equals(""))
			age = null;
		String fullname=request.getParameter("fullname");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String country=request.getParameter("country");
		String about=request.getParameter("about");
		String sex=request.getParameter("sex");
		String phone=request.getParameter("phone");

		
		Users u=new Users();
		u.setUser_name(username);
		u.setUser_fullname(fullname);
		u.setUser_about(about);
		u.setUser_address(address);
		u.setUser_email(email);
		if(age == null)
			u.setUser_age(0);
		else
			u.setUser_age(Integer.parseInt(age));
		u.setUser_city(city);
		u.setUser_country(country);
		u.setUser_sex(Integer.parseInt(sex));
		u.setUser_phone((phone));
		
		
		/*PrintWriter out=response.getWriter();*/
		
		UsersDAO ud=new UsersDAO();
		ud.addProfileUser(u);
		
		if(ud.addProfileUser(u)==true) {
			request.setAttribute("update_ok", "Cập nhật thông tin cá nhân thành công");
			response.sendRedirect("view/admin/admin-profile.jsp");
		}
		
		else {
			request.setAttribute("update_false", "Lỗi không cập nhật được thông tin cá nhân!");
			RequestDispatcher rd=request.getRequestDispatcher("view/admin/admin-profile.jsp");
			rd.forward(request, response);
		/*	rd.include(request, response);*/
		/*	out.println("cap nhat loi");*/
		}
	}

	}


