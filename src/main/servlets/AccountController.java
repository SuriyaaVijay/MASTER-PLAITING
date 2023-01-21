package controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/account")
public class AccountController extends HttpServlet {
    private static final long serialVersionUID = 1L;
      public AccountController() {
		super();
	}
      protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("account/index.jsp").forward(request, response);
	}
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
                String username = request.getParameter("email");
                String password = request.getParameter("psw");
		String captcha = session.getAttribute("captcha_security").toString();
		String verifyCaptcha = request.getParameter("captcha");
		if (captcha.equals(verifyCaptcha)) {
			try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountController.class.getName()).log(Level.SEVERE, null, ex);
        }
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/travel?useSSL=false","root","")) {
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("select * from register where name='"+username+"' and psw= '"+password+"'");       
                ;
                if(rs.next()){
                   
                    session.setAttribute("username",username);
                    response.sendRedirect("homepage.jsp");
       }
                else{
                   response.sendRedirect("index.html");
                }
                
            }catch(IOException | SQLException e){ System.out.println(e);} 
     }
 
 else {
			request.setAttribute("error", "Captcha Invalid");
			request.getRequestDispatcher("account/index.jsp").forward(request, response);
		}
	}
}
    


