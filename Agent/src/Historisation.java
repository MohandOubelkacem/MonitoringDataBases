import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import org.json.JSONException;

public class Historisation {

	static String login = "root";
	static String password = "";
	static String urlBd = "jdbc:mysql://localhost/Historisation?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	static Connection con;
	static Statement statHist;
	static ArrayList<ArrayList<String>> k = new ArrayList();
	static String s = null;
	static ArrayList<String> tableau = new ArrayList();
	
	public static void postgrSql() throws SQLException {
		Connection connection = AgentPostgres.getConnection();
		Statement stmt = connection.createStatement();
		
		try {
			k = AgentPostgres.indicateursPerformances(stmt);
			String taba;
			ArrayList<String> t = new ArrayList();
			int ex;
			int phyR;
			int logicalR;
			Double elapsedTime;
			String querie;
			String remove=" TRUNCATE TABLE `PostgreSql` ";
			statHist.execute(remove);	
			for (int i = 0; i < k.size(); i = i + 4) {
				
					ex=Integer.parseInt(k.get(i).get(0));
					phyR=Integer.parseInt(k.get(i).get(1));
					logicalR=Integer.parseInt(k.get(i).get(2));
					elapsedTime=Double.parseDouble(k.get(i).get(3));
					System.out.println("execution: "+ex+"physicalRead:"+phyR+"LogicalRead :"+logicalR+"ElapsedTime : "+elapsedTime);
					
					querie="INSERT INTO `PostgreSql`(execution, physicalRead, logicalRead, ElapsedTime) VALUES (?,?,?,?)";
					PreparedStatement statement=con.prepareStatement(querie);
					statement.setInt(1,ex);
					statement.setInt(2,phyR);
					statement.setInt(3,logicalR);
					statement.setDouble(4,elapsedTime);		
					statement.executeUpdate();
					
					System.out.println("Requête exéctuer avec succée");
			}

		} catch (SQLException e) {
			System.out.println("SQLException !");
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			System.err.println("Json exception");
		} catch (IOException e) {
			System.err.println("IOException");
		} catch (InterruptedException e) {
			System.err.println("Interrupted Exception ");
		}

	}

	public static void sqlServer() {
		Connection connectionAvecSql;
		AgentSqlServer agent = new AgentSqlServer();
		connectionAvecSql = agent.getConnection();
		Statement stmt;
		try {
			stmt = connectionAvecSql.createStatement();

			k = PerformanceIndicatorSqlServer.performanceIndicator(stmt);

			for (int i = 0; i < k.size(); i = i + 4) {
				for (int j = 0; j < 4; j++) {
					System.out.println(k.get(i).get(j));

				}

			}
		} catch (SQLException e) {
			System.out.println("Connexion failed to SqlServer");
		} catch (InterruptedException e) {
			System.err.println("Connexion interrompu !");
		} catch (IOException e) {
			System.err.println("I-O Exception");
		} catch (JSONException e) {
			System.err.println("Fichier Json introuvable !");
		}
	}
	
		public static void mySql() {
			AgentMySQL_D agent = new AgentMySQL_D();
			Connection connectionMySqlIndicator = agent.getConnection();
			Statement stmt;
		    try {
				stmt = connectionMySqlIndicator.createStatement();

				PerformanceIndicatorMySql indicator= new PerformanceIndicatorMySql();
				k=indicator.performanceIndicator(stmt);
				System.out.println(k.size());
				for (int i = 0; i < k.size(); i = i + 4) {
					for (int j = 0; j < 4; j++) {
						System.out.println(k.get(i).get(j));

					}

				}
		    
		    } catch (SQLException e) {
			System.err.println("SQL Error Mysql database Indicatot");
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InterruptedException e) {
				System.err.println("Connexion interrupted from Mysql's database indicator");;
			} catch (IOException e) {
				System.err.println("Io Exception");
			}
			
			
			
			
		}
	
	public static void main(String[] args) throws SQLException {
		try {

			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("DRIVER OK");

		} catch (ClassNotFoundException ex) {

			JOptionPane.showMessageDialog(null, "DRIVER NOT OK : " + ex.getMessage(), "Connection Error",
					JOptionPane.ERROR_MESSAGE);
		}
		try {
			con = DriverManager.getConnection(urlBd, login, password);
			System.out.println("Connection sucess!" + "\n");
			statHist=con.createStatement();
		} catch (SQLException sqlex) {
			JOptionPane.showMessageDialog(null, "VERIFIER CONNECTION : " + sqlex.getMessage(), "Connection Error",
					JOptionPane.ERROR_MESSAGE);
		}
		/*
		 * Appeler les méthode statics de connexion aux bases de données
		 */
//		postgrSql();
//		sqlServer();
		mySql();
	}
}
