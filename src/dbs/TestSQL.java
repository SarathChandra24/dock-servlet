package dbs;

import java.sql.*;

public class TestSQL {
    public static void main(String[] args) {
        System.out.println("HI");
        tee();
    }


    private static void tee(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Entered Tee");

            Connection conn = DriverManager.getConnection(CredentialOfDataBase.DB_URL + CredentialOfDataBase.DB_name,
                    CredentialOfDataBase.DB_USER,CredentialOfDataBase.DB_password);
            System.out.println("Connected via MysqlDB 3308");
            PreparedStatement ps ;
            //ps=conn.prepareStatement("select * from eidiko.customer_details");
            ps=conn.prepareStatement("select * from eidiko.customer_details where customer_id=58104708 " +
                    "and contact_number=9440222551;");
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                if (resultSet.getString(2).contains("SARATH"))
                    System.out.println("welcome");
                System.out.println(resultSet.getString(2));
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("sql Exception");
        }
        catch (ClassNotFoundException e) {
            System.out.println("Class is not found");
            e.printStackTrace();
        }
    }
}
