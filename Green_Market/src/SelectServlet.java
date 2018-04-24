

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

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
		
		String studentid = null;
		String quiz = null;
		String exam = null;
		
		String sql = "select * from grade where studentid = ? limit 1";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, "b63030007");
			rs = ps.executeQuery();
			
			while (rs.next()) {
				studentid = rs.getString("studentid");
				quiz = rs.getString("quiz");
				exam = rs.getString("exam");
			}
		}
		catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		String message = null;
		if (studentid == null) {
			message = "Select FAIL";
		}
		else {
			message = "Select SUCCESS";
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
