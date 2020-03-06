package projetL3W1;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONException;

public class ThreadTime4 implements Runnable{
	
		Connection connection;
		private Statement stmt1;
	private Socket s;
		public ThreadTime4( Connection connection,Statement stmt1) {
			
			this.stmt1=stmt1;
			this.connection=connection;
		}
		@Override
		public void run() {
			
			// TODO Auto-generated method stub
			while(true) {
				 try {
						Thread.sleep(20000);
						 s = new Socket("10.30.19.49",6660);
					//Timer 	timer = new Timer();
					 DataOutputStream 	os = new DataOutputStream(s.getOutputStream());
						String  pl=AgentMysql.indicateursMysql(stmt1);
						String p="indicateursPerformanceMysql";
						os.writeUTF(p);
					 os.writeUTF(pl);
					 os.flush();

				  //    timer.scheduleAtFixedRate(new Time(s,stmt1),0,1000);
						
						
				} catch (IOException e1 ) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}catch (InterruptedException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
	     		
		

			

		}

	}}

