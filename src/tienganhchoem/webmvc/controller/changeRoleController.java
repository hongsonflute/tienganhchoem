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

@WebServlet("/changeRoleController")
public class changeRoleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public changeRoleController() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
	}
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String idrole=request.getParameter("role");
		String iduser=request.getParameter("iduser");
		
		Users u=new Users();
		u.setUser_id(iduser);
		u.setUser_roleid(Integer.parseInt(idrole));
		
		UsersDAO ud=new UsersDAO();
		
		if(ud.changeRole(u)==true)
		{
			request.setAttribute("changeRole_ok", "Sửa quy�?n thành công!");
			RequestDispatcher rd=request.getRequestDispatcher("view/admin/account.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("changeRole_erro", "Sửa quy�?n thất bại!");
			RequestDispatcher rd=request.getRequestDispatcher("view/admin/account.jsp");
			rd.forward(request, response);
		}
		

}
}
