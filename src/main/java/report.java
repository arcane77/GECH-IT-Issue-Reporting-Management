

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * Servlet implementation class It
 */
@WebServlet("/report")
public class report extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public report() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Map<String, Object>> reports = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "Myocardium@1");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM report");
            ResultSet rs = ps.executeQuery();
            

            while (rs.next()) {
                Map<String, Object> report = new HashMap<>();
                report.put("Name", rs.getString("Name"));
                report.put("Department", rs.getString("Department"));
                report.put("Priority", rs.getInt("Priority"));
                report.put("Room_No", rs.getInt("Room_No"));
                report.put("Description", rs.getString("Description"));
                reports.add(report);
            }
            PreparedStatement psCount = con.prepareStatement("SELECT COUNT(*) FROM report");
            ResultSet rsCount = psCount.executeQuery();
            if(rsCount.next()) {
            	int count=rsCount.getInt(1);
            	request.setAttribute("inboxCount", count);
            }

            request.setAttribute("reports", reports);
            RequestDispatcher rd = request.getRequestDispatcher("reported.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String Name = request.getParameter("name");
		String Department = request.getParameter("dept");
		int Priority = Integer.parseInt(request.getParameter("prior"));
		int Room_No = Integer.parseInt(request.getParameter("Rno"));
		String Description = request.getParameter("description");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","Myocardium@1");
			
			PreparedStatement ps =con.prepareStatement("INSERT INTO report(Name,Department,Priority,Room_No,Description) values(?,?,?,?,?)");
			
			ps.setString(1, Name);
			ps.setString(2, Department);
			ps.setLong(3, Priority);
			ps.setLong(4, Room_No);
			ps.setString(5, Description);

			int i=ps.executeUpdate();

			if(i>0) {
				RequestDispatcher rd =request.getRequestDispatcher("success.jsp");
				rd.forward(request,response);
				
			}
			else {
				out.println("<font color = red size=18>Enter the details in correct format!!<br>");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
