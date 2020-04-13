

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class AgentSqlServer {
	
	static Connection connectionAvecSql = null;
	
	public AgentSqlServer() {};
	
	/**
	 * Se connecter à la base de données Sql Server
	 * @return Connexion reussie ou refusée
	 */ 
	public Connection getConnection(){
		    String urlBD = "jdbc:sqlserver://localhost:1433;databaseName=registration";
			String user ="sa", password="dorline";
			
			try {
				/**
				 *Charger la classe correspondant au driver souhaité
				 */
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				System.out.println("DRIVER OK");
				
			}
			catch(ClassNotFoundException ex) {
				/*ex.printStackTrace();
				System.out.println("Error : DRIVER NOT OK");*/
				JOptionPane.showMessageDialog(null, "DRIVER NOT OK : "+ex.getMessage(),"Connection Error",JOptionPane.ERROR_MESSAGE);	
			}
			try {
				/**
				 *Obtenir une connexion à la base de données  
				 */
				connectionAvecSql = DriverManager.getConnection(urlBD,user,password);
				System.out.println("Connection sucess!"+"\n");
			}
			catch(SQLException sqlex){
				/*ex.printStackTrace();
				System.out.println("Connection Error");*/
				JOptionPane.showMessageDialog(null, "VERIFIER CONNECTION : "+ sqlex.getMessage(),"Connection Error",JOptionPane.ERROR_MESSAGE);
			}
			return connectionAvecSql;
	}
	
	/**
	 *Tester si getConnection fonctionne 
	 */
	public static void main(String[] args) throws SQLException {
		AgentSqlServer agent = new AgentSqlServer();
		agent.getConnection();
	}

}