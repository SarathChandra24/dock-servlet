package dbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLcon  {
    public static void main(String ar[]) throws SQLException, ClassNotFoundException {
       Connection con= initializeDB();
    }
    public static Connection initializeDB()  {
        //Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Entered the MySQLcon initialize()");
        //TestSQL.tee();
        System.out.println("Database searching");
        Connection con = null;
        try {
            con = DriverManager.getConnection(CredentialOfDataBase.DB_URL + CredentialOfDataBase.DB_name,
                    CredentialOfDataBase.DB_USER,CredentialOfDataBase.DB_password);
            System.out.println("Database connected");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
}
