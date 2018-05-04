package controller;

import java.io.IOException;
import java.util.List;

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
//@WebServlet("/ProductInfoController")
public class ProductInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String INSERT_OR_EDIT = "pages/register.jsp";
	private static String LIST_INDEX = "pages/index.jsp";
	private static String LIST_FILTER = "pages/filter.jsp";
	private static String LIST_PRODUCT = "pages/xie.jsp";
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
		response.getWriter().append("Served at: ").append(request.getContextPath()).append("\n");
		String forward = "";
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("list")) {
			response.getWriter().append("start list\n");
			List<ProductInfo> haha = dao.randomGetAllProducts();
			response.getWriter().append("get haha\n");
			System.out.println(dao.randomGetAllProducts());
			forward = LIST_INDEX;
			request.setAttribute("random_productInfos", dao.randomGetAllProducts());
			request.setAttribute("latest_productInfos", dao.getLatestProducts());
			response.getWriter().append("end list\n");
		} else if (action.equalsIgnoreCase("filterlist")) {
			forward = LIST_FILTER;
			request.setAttribute("productInfos", dao.getAllProducts());
		} else if (action.equalsIgnoreCase("p_type")) {
			forward = LIST_FILTER;
			request.setAttribute("productInfos", dao.getAllProductsByType(request.getParameter("product_type")));
		}
		response.getWriter().append("end if");
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
		System.out.println("ProductInfo__doPost");
		ProductInfo productInfo = new ProductInfo();
		productInfo.setProductName(request.getParameter("p_name"));
		productInfo.setProductPrice(request.getParameter("p_price"));
		productInfo.setProductPicture(request.getParameter("p_picture"));
		productInfo.setProductType(request.getParameter("p_type"));
		productInfo.setProductDescription(request.getParameter("p_description"));
		
		String product_id = request.getParameter("p_id");
		if (product_id == null || product_id.isEmpty()) {
			dao.addProductInfo(productInfo);
		} else {
			productInfo.setProductId(Integer.parseInt(product_id));
			//dao.updateProductInfo(productInfo);
		}
		RequestDispatcher view = request.getRequestDispatcher(LIST_PRODUCT);
		view.forward(request, response);
	}

}
