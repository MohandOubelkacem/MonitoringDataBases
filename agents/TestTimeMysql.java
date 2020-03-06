package projetL3W1;

import java.io.IOException;

import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


import org.json.JSONException;
public class TestTimeMysql extends Thread {

	public static void main(String [] args)throws ClassNotFoundException, SQLException, UnknownHostException, IOException, JSONException, InterruptedException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection connection =AgentMysql.getConnection(); 
		 
		
		
		 Statement stmt1 = connection.createStatement( );
	
		 Thread t1 = new Thread(new ThreadTime4(connection,stmt1));
			
			
		
			t1.start();
			
	
			
		
		//s.close();
	
}}
