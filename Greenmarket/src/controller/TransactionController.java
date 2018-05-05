package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TransactionDao;
import dao.UserInfoDao;
import model.UserInfo;

/**
 * Servlet implementation class TransactionController
 */
@WebServlet("/TransactionController")
public class TransactionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String LIST_TRANSACTION = "pages/mypage.jsp";
	private TransactionDao dao;
	private UserInfoDao dao2;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TransactionController() {
		super();
		// TODO Auto-generated constructor stub
		dao = new TransactionDao();
		dao2 = new UserInfoDao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String forward = "";
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("list")) {
			forward = LIST_TRANSACTION;
			request.setAttribute("transactions", dao.getAllTransaction());
		}
		else if (action.equalsIgnoreCase("get_user_by_id")) {
			forward = LIST_TRANSACTION;
			int user_id = Integer.parseInt(request.getParameter("user_id"));
			UserInfo userInfo = dao2.getUserInfoById(user_id);
			//request.setAttribute(arg0, arg1);
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
		doGet(request, response);
	}

}
