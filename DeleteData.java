package register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteData
 */
@WebServlet("/deleted")
public class DeleteData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rowno = request.getParameter("rowno");
		int row=Integer.parseInt(rowno);
		RequestDispatcher dispatcher = null;
		
		 Connection con =null;
		    Statement st = null;
		    ResultSet rs = null;
		    int rowCount = 0;
		    
		    try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/organization","root","pass@123");
				st=con.createStatement();
				
				String qry ="delete from register where id="+row;
				rowCount = st.executeUpdate(qry);
			dispatcher = request.getRequestDispatcher("admin.jsp");
			if(rowCount > 0)
			{
				request.setAttribute("status","succes");
			}
			else
			{
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request, response);
			

			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
