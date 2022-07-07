/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nakliye;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import net.proteanit.sql.DbUtils;


public class nakliyeBaglanti {
    public static Connection ConnectDb(){
        
        Connection conn=null;
        ResultSet rs=null;
        PreparedStatement pst=null;
        
        try{ 
           Class.forName("com.mysql.jdbc.Driver");
           conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nakliye", "root", "123456");
         }
         
        catch (ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, e);
         }
         
         return conn;
    }
}
