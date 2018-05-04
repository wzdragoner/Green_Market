package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracle.jrockit.jfr.RequestableEvent;

import dao.ProductDetailDao;
import dao.ProductInfoDao;

/**
 * Servlet implementation class ProductDetailController
 */
@WebServlet("/ProductDetailController")
public class ProductDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String LIST_ITEMINFO = "pages/itemInfo.jsp";
	private static String JUMP_TO_BANK = "http://localhost:8888/PeanutBank/peanutBank.jsp";
	private ProductDetailDao dao;
	private ProductInfoDao dao2;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductDetailController() {
		super();
		// TODO Auto-generated constructor stub
		dao = new ProductDetailDao();
		dao2 = new ProductInfoDao();
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
			forward = LIST_ITEMINFO;
			
			request.setAttribute("productPictures",
					dao.getAllProductPicture(Integer.valueOf(request.getParameter("product_id"))));
			request.setAttribute("productInfos",
					dao.getAllProductInfo(Integer.valueOf(request.getParameter("product_id"))));
			request.setAttribute("productInfoss",
					dao2.getProductInfoById(Integer.valueOf(request.getParameter("product_id"))));
			request.setAttribute("random_productInfos", dao2.randomGetAllProducts());
			request.setAttribute("latest_productInfos", dao2.getLatestProducts());
			
		}
		//response.sendRedirect(forward);
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
