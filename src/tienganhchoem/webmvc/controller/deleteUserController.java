
package tienganhchoem.webmvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tienganhchoem.webmvc.dao.UsersDAO;


@WebServlet("/deleteUserController")
public class deleteUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public deleteUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String iduser=request.getParameter("iduser");
		UsersDAO ud=new UsersDAO();
		ud.deleteUser(iduser);
		response.sendRedirect("/tienganhchobe/view/admin/account.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

}
