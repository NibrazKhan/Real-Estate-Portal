/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Real_State_user;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Nibraz Khan
 */
public class Real_State_user {

    /**
     * @param args the command line arguments
     */
    public static Connection dbConnection() throws ClassNotFoundException, SQLException{//creating connection with MySql database
        String url = "jdbc:mysql://127.0.0.1/realstate";
        String username = "root";
        String password = "";
        Connection connection = (Connection) DriverManager.getConnection(url, username, password);
        return connection;
        
    }
    public static void main(String[] args) {
        
        LoginPage lf=new LoginPage();//created obj
        lf.setVisible(true); 
        //new LoginPage().setVisible(true);
        
    }
    
}
