

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection conn = MyDBUtil.connectDB();
		java.sql.PreparedStatement ps = null;
		ResultSet rs = null;
		
		int count = 0;
		List<String> studentid = new ArrayList<String>();
		List<String> quiz = new ArrayList<String>();
		List<String> exam = new ArrayList<String>();
		
		
		String sql = "select * from grade where studentid = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, request.getParameter("studentid"));
			rs = ps.executeQuery();
			
			while (rs.next()) {
				studentid.add(rs.getString("studentid"));
				quiz.add(rs.getString("quiz"));
				exam.add(rs.getString("exam"));
				count++;
			}
		}
		catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		String message = null;
		if (studentid.size() ==0) {
			message = "Select FAIL";
		}
		else {
			message =  count + "Select SUCCESS";
			request.setAttribute("count", count);
			request.setAttribute("studentid", studentid);
			request.setAttribute("quiz", quiz);
			request.setAttribute("exam", exam);
		}
		
		request.setAttribute("message", message);
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
