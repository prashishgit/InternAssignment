
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author user
 */
public class ConnectionFactory {

    Connection con = null;
    Statement stmt = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    public ConnectionFactory() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/shop";
            con = DriverManager.getConnection(url, "root", "");
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    boolean checkLogin(String username, String password) {
        boolean flag = false;
        String query = "SELECT * FROM user where username=? and password=?";
        try {
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                flag = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return flag;
    }
}
