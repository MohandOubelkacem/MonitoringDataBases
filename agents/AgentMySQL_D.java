
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class AgentMySQL_D {
	
static Connection connectionAvecMySql = null;
	
	public AgentMySQL_D() {};
	
	/**
	 * Se connecter à la base de données MySql 
	 * @return Connexion reussie ou refusée
	 */
	public Connection getConnection(){	

		String urlBD = "jdbc:mysql://localhost:3306/performance_schema?useUnicode=true&useFastDateParsing=false&characterEncoding=UTF-8";
		String user ="root", password="";
		    
			
			try {
				/**
				 *Charger la classe correspondant au driver souhaité
				 */
				Class.forName("com.mysql.jdbc.Driver");
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
				connectionAvecMySql = DriverManager.getConnection(urlBD,user,password);
				System.out.println("Connection sucess!"+"\n");
			}
			catch(SQLException sqlex){
				/*ex.printStackTrace();
				System.out.println("Connection Error");*/
				JOptionPane.showMessageDialog(null, "VERIFIER CONNECTION : "+ sqlex.getMessage(),"Connection Error",JOptionPane.ERROR_MESSAGE);
			}
			return connectionAvecMySql;
	}
	
		/**
		 *Tester si getConnection fonctionne 
		 */
		public static void main(String[] args) throws SQLException {
			AgentMySQL_D agentmysql = new AgentMySQL_D();
			agentmysql.getConnection();
		}
}