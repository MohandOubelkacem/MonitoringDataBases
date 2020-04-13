
import java.io.IOException;
import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONException;

public class BasseMysql {

	
public static void main(String[] args) throws JSONException, IOException, InterruptedException {
	// TODO Auto-generated method stub
	
	try {   
			Class.forName("com.mysql.cj.jdbc.Driver");
		//connexion a la base de donnée
		Connection connection =AgentMysql.getConnection(); System.out.println("Connexion réussie !");
		Statement stmt1 = connection.createStatement( );
		AgentMysql.users(stmt1);
		System.err.println("taille de la base de donnnÃ©es !");
    AgentMysql.tailleDatabase(stmt1);
	System.err.println("taille des tables de la base de donnnÃ©es !");
    AgentMysql.tailleTables(stmt1);
	System.err.println("les indicateurs  de la base de donnnÃ©es !");
    AgentMysql.indicateursMysql(stmt1);

		connection.close( ); }
		catch (SQLException e){
		System.out.println("Connexion non effectuée !");
		e.printStackTrace( ); }
		catch (ClassNotFoundException e){
		System.out.println("VeÌrifier que la classe du driver est dans le classpath");
		e.printStackTrace( );} }

	
}