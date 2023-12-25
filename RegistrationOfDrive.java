package register;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationOfDrive
 */
@WebServlet("/registrationofdrive")
public class RegistrationOfDrive extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String drivename = request.getParameter("drivename");
		String name = request.getParameter("oname");
		String email = request.getParameter("oemail");
		String contact = request.getParameter("ocontact");
		String web = request.getParameter("owebsite");
		String venue = request.getParameter("ovenue");
		String date = request.getParameter("odate");
		String time = request.getParameter("otime");
		RequestDispatcher dispatcher = null;
		Connection con = null;
//		PrintWriter out = response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/organization?useSSL=false","root","pass@123");
			PreparedStatement pst = con.prepareStatement("insert into register(drivename,oname,oemail,ocontact,owebsite,ovenue,date,time) values(?,?,?,?,?,?,?,?)");
			pst.setString(1, drivename);
			pst.setString(2, name);
			pst.setString(3, email);
			pst.setString(4, contact);
			pst.setString(5, web);
			pst.setString(6, venue);
			pst.setString(7, date);
			pst.setString(8, time);
	
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registrationfordrive.jsp");
			if(rowCount > 0)
			{
				request.setAttribute("status","success");
			}
			else
			{
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request, response);
			
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
	}

}
