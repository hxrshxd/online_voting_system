package Online_Voting_System;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class voterLogin
 */
public class voterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		DatabaseManager db = new DatabaseManager();
		java.sql.Connection con = db.getConnection();
		
		String voternum = request.getParameter("voterNumber");
		
		try {
			PreparedStatement preparedStatement = con.prepareStatement("select voter_card_number from vote where voter_card_number = '"+voternum+"'"); 
			ResultSet rsl = preparedStatement.executeQuery("select voter_card_number from vote where voter_card_number = '"+voternum+"'");
			if (rsl.next()) {
				response.sendRedirect("voterCheck.jsp");
			} else {
				PreparedStatement preparedStatement2 = con.prepareStatement("select vid, pnumber from voters where voter_card_number = '"+voternum+"'");
				ResultSet rsl2 = preparedStatement2.executeQuery("select vid, pnumber from voters where voter_card_number = '"+voternum+"'");
				if (rsl2.next()) {
					String contact = rsl2.getString("pnumber");
					response.sendRedirect("userWelcomePage.jsp?con="+contact);
				} else {
					out.println("Please enter valid voter card number");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
