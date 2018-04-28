package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductInfoDao;
import dao.UserInfoDao;
import model.ProductInfo;

/**
 * Servlet implementation class ProductInfoController
 */
@WebServlet("/ProductInfoController")
public class ProductInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String INSERT_OR_EDIT = "pages/register.jsp";
    private static String LIST_USER = "pages/index.jsp";
    private ProductInfoDao dao;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductInfoController() {
        super();
        // TODO Auto-generated constructor stub
        dao = new ProductInfoDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String forward = "";
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("list")) {
			forward = LIST_USER;
			request.setAttribute("productInfos", dao.getAllProducts());
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}