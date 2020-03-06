package projetW1;


import java.io.IOException;
import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONException;

public class BasePostgres {

	public static void main(String[] args) throws ClassNotFoundException, JSONException, IOException, InterruptedException {
		// TODO Auto-generated method stub
		
			try {   
				//charger le drive 
				Class.forName("org.postgresql.Driver"); 
				//obtenir la connexion
			Connection connection =AgentPostgres.getConnection(); System.out.println("Connexion réalisée !");
			Statement stmt = connection.createStatement( );
			System.err.println("la taille des database ");
			AgentPostgres.recuperationDonnee(stmt);
			AgentPostgres.indicateursGlobaux(stmt);
			AgentPostgres.indicateursPerformances(stmt);
		   AgentPostgres.colllision(stmt);
			 System.err.println("la taille de la table question");
			AgentPostgres.tailleTable(stmt );
			 System.err.println("la liste des tables");
			AgentPostgres.tables(stmt);
			 System.err.println("Les tables et les index les plus volumineux sont repérés");
			//AgentPostgres.tableIndex(stmt);
			  System.err.println("taux d'occupation disque de la table question ");
			AgentPostgres.utilisationDisqueTable(stmt);
			  System.err.println("la taille de la base de donnée login");
			AgentPostgres.tailleDataBase(stmt);
			
			connection.close( ); }
			catch (SQLException e){
			System.out.println("Connexion non effectuée !");
			e.printStackTrace( ); }
	}}
			

	


