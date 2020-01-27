package dbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLcon  {
    public static Connection initializeDB() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Entered the MySQLcon initialize()");
        //TestSQL.tee();
        System.out.println("Database searching");
        Connection con = DriverManager.getConnection(CredentialOfDataBase.DB_URL + CredentialOfDataBase.DB_name,
                CredentialOfDataBase.DB_USER,CredentialOfDataBase.DB_password);
        return con;
    }
}
