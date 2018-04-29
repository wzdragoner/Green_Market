package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import dao.UserInfoDao;
import model.UserInfo;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String INDEX = "pages/indexStarter.jsp";
    private UserInfoDao dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
        dao = new UserInfoDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		UserInfo userInfo = new UserInfo();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username + "----" + password);
		userInfo.setUserName(username);
		userInfo.setUserPassword(password);
		System.out.println(userInfo.getUserName());
		System.out.println(userInfo.getUserPassword());
		List<UserInfo> list = dao.getAllUsers();
		System.out.println(list);
		PrintWriter out = response.getWriter();
		for (UserInfo userInfo2 : list) {
			System.out.println(userInfo.getUserName().equals(userInfo2.getUserName()) && userInfo.getUserPassword().equals(userInfo2.getUserPassword()));
			System.out.println("hahaha");
			if (userInfo.getUserName().equals(userInfo2.getUserName()) && userInfo.getUserPassword().equals(userInfo2.getUserPassword())) {
				request.getSession().setAttribute("user", userInfo);
				RequestDispatcher view = request.getRequestDispatcher(INDEX);
				view.forward(request, response);
				return;
			}
		}
		out.println("<h3>Login Flie</h3>");
	}

}
