package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserInfoDao;
import model.UserInfo;

/**
 * Servlet implementation class UserInfoController
 */
@WebServlet("/UserInfoController")
public class UserInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String INSERT_OR_EDIT = "pages/register.jsp";
	private static String LIST_USER = "pages/hahalist.jsp";
	private static String MY_PAGE = "pages/mypageStarter.jsp";
	private UserInfoDao dao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserInfoController() {
		super();
		// TODO Auto-generated constructor stub
		dao = new UserInfoDao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet_UserInfo");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String forward = "";
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("delete")) {
			// System.out.println("delete");
			int user_id = Integer.parseInt(request.getParameter("user_id"));
			dao.deleteUserInfo(user_id);
			forward = LIST_USER;
			request.setAttribute("userInfos", dao.getAllUsers());
		} else if (action.equalsIgnoreCase("edit")) {
			// System.out.println("edit");
			forward = INSERT_OR_EDIT;
			int user_id = Integer.parseInt(request.getParameter("user_id"));
			UserInfo userInfo = dao.getUserInfoById(user_id);
			request.setAttribute("userInfo", userInfo);
		} else if (action.equalsIgnoreCase("list")) {
			forward = LIST_USER;
			request.setAttribute("userInfos", dao.getAllUsers());
		} else {
			// System.out.println("insert");
			forward = INSERT_OR_EDIT;
		}

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		System.out.println("doPost");
		UserInfo userInfo = new UserInfo();
		userInfo.setUserName(request.getParameter("user_name"));
		userInfo.setUserPassword(request.getParameter("user_password"));
		userInfo.setUserMail(request.getParameter("user_mail"));
		userInfo.setUserAdd(request.getParameter("user_add"));
		userInfo.setUserTel(request.getParameter("user_tel"));

		String user_id = request.getParameter("user_id");
		if (user_id == null || user_id.isEmpty()) {
			dao.addUserInfo(userInfo);
		} else {
			userInfo.setUserId(Integer.parseInt(user_id));
			dao.updateUserInfo(userInfo);
		}
		RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
		System.out.println("post getallusers");
		System.out.println(dao.getAllUsers());
		request.setAttribute("userInfos", dao.getAllUsers());
		view.forward(request, response);

	}

}
