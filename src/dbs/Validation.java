package dbs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Validation extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html");
        String custid=request.getParameter("id");
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        PrintWriter pw = response.getWriter();
        System.out.println("Entered to the do post");
        try {

            response.setContentType("text/html");
            pw.println("<html><body>");
            pw.println("<p>Welcome "+name+" </p>");
            Connection conn= MySQLcon.initializeDB();
//
            //
            System.out.println("Created connection");

//
            //
            PreparedStatement ps = conn.prepareStatement("select * from eidiko.customer_details where customer_id=? " +
                    "and contact_number=?;");

            //System.out.println("prepare statement is done");
            //System.out.println("testing tee");
            //TestSQL.tee();


            ps.setString(1,custid);
            ps.setString(2,mobile);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                if (rs.getString(2).contains(name.toUpperCase())) {
                    pw.println("<h1>" + name + " with CIF " + custid+" is Authorised<h1>");
                }
                else {
                    pw.println("<h1>" + name + " with CIF " + custid+" is <b>NOT Authorised</b><h1>");
                }
                pw.println("Thank you");
            }
            else {
                pw.println("<h1>" + name + " with CIF " + custid+" is <b>DOES NOT Exist</b><h1>");
            }
            pw.println("</body</html>");
        } catch (SQLException | ClassNotFoundException e) {
            pw.println("Database Connection error." +
                    " Error may be due to IP ");
            System.out.println("Error at connecting to database. Please check whether the database id reachable or not.");
            e.printStackTrace();
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
