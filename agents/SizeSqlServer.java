package l3w1_Projet;


import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class SizeSqlServer extends Thread {
	
	static Connection connectionAvecSql;
	static String key  ="";
	static String value ="";
	
	public SizeSqlServer() {};
	
	/**
	 * REQUETE : La taille totale d'une base dans Sql Server
	 */
	private static final String Size = "USE master;\r\n" + 
			"SELECT name, size/128.0 FileSizeInMB\r\n" + 
			"FROM sys.database_files;";

	/**
	 * récupérer La taille totale d'une base dans Sql Server 
	 * @param stmt, pour exécuter une instruction SQL
	 * @return la taille totale de la base master
	 * @throws InterruptedException
	 * @throws SQLException
	 * @throws IOException
	 */
	public String sizeofDataBase(Statement stmt) throws InterruptedException, SQLException, IOException{
		
		AgentSqlServer agent = new AgentSqlServer();
		connectionAvecSql = agent.getConnection();
		
		ResultSet rs;
	    
	    sleep(4000);
	    
	    stmt = connectionAvecSql.createStatement();

		rs = stmt.executeQuery(Size);
		
		JSONObject obj = new JSONObject();
		JSONArray array = new JSONArray();
		
			try {
				
				FileWriter writeFile = null;
				
				writeFile = new FileWriter("FileSizeInMB.json");
				
				while (rs.next()){
					
					System.out.println("Name : "+rs.getString("name")+" \t");
					System.out.println("FileSizeInMB : "+rs.getString("FileSizeInMB")+" \t");
					System.out.println();	
					
					key = rs.getString("name");
					value = rs.getString("FileSizeInMB");
					try {
						
						obj = new JSONObject();
	//					array = new JSONArray();
						
						obj.put(key,value);
						array.put(obj);
						
					} catch (JSONException e) {
						e.printStackTrace();
					}	
				}
				
					writeFile.write(array.toString());
					writeFile.flush();
					writeFile.close();

					System.out.println(array.toString());
						
					
			}catch(SQLException ex) {
				ex.printStackTrace();
			}finally{
				if (rs != null) {
			        try {
			            rs.close();
			        } catch (SQLException ex1) {
			        }
			    }
			    if (stmt != null) {
			        try {
			            stmt.close();
			        } catch (SQLException ex2) {
			        }
			    }
			    if (connectionAvecSql != null) {
			        try {
			        	connectionAvecSql.close();
			        } catch (SQLException ex3) {
			        }
			    }
			}
			return array.toString(); 
				//return obj.toString(); méthode doit retourner un String 
			}
	
	 
		/**
		 * REQUETE : La taille used and free space dans Sql Server
		 */
		private static final String Size1 = "USE MASTER SELECT\r\n" + 
				" SUBSTRING(a.FILENAME, 1, 1) Drive,\r\n" + 
				" [FILE_SIZE_MB] = convert(decimal(12,2),\r\n" + 
				"round(a.size/128.000,2)),\r\n" + 
				" [SPACE_USED_MB] = convert(decimal(12,2),\r\n" + 
				"round(fileproperty(a.name,'SpaceUsed')/128.000,2)),\r\n" + 
				" [FREE_SPACE_MB] = convert(decimal(12,2),\r\n" + 
				"round((a.size-fileproperty(a.name,'SpaceUsed'))/128.000,2)) ,\r\n" + 
				" [FREE_SPACE_%] = convert(decimal(12,2),\r\n" + 
				"(convert(decimal(12,2),round((a.size-fileproperty(a.name,'SpaceUsed'))/128.000,2)) \r\n" + 
				"/ convert(decimal(12,2),round(a.size/128.000,2)) * 100)),\r\n" + 
				" a.NAME, a.FILENAME\r\n" + 
				"FROM dbo.sysfiles a\r\n" + 
				"ORDER BY Drive, [Name];";

		
		/**
		 * récupérer La taille used and free space dans Sql Server
		 * @param stmt, pour exécuter une instruction SQL
		 * @return la taille used and free space
		 * @throws JSONException
		 * @throws InterruptedException
		 * @throws SQLException
		 * @throws IOException
		 */
		public String sizeofDataBase1(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
			
			AgentSqlServer agent = new AgentSqlServer();
			connectionAvecSql = agent.getConnection();
			
			ResultSet rs;
		    
		    sleep(4000);
		    
		    stmt = connectionAvecSql.createStatement();

			rs = stmt.executeQuery(Size1);
			
			JSONObject obj1 = new JSONObject();
			JSONArray array1 = new JSONArray();
			
			try {
				
				FileWriter writeFile1 = null;
				
				writeFile1 = new FileWriter("SizeFreeUsed.json");
				
				while(rs.next()) {
					
//					System.out.println("FILE_SIZE_MB : "+rs.getString("FILE_SIZE_mb")+" \t");
//					System.out.println("SPACE_USED_MB : "+rs.getString("SPACE_USED_MB")+" \t");
//					System.out.println("FREE_SPACE_MB : "+rs.getString("FREE_SPACE_MB")+" \t");
//					System.out.println("FREE_SPACE_% : "+rs.getString("FREE_SPACE_%")+" \t");
//					System.out.println("NAME : "+rs.getString("NAME")+" \t");
//					System.out.println();
					
					obj1 = new JSONObject();
					obj1.put("FILE_SIZE_MB",rs.getString("FILE_SIZE_MB"));
					obj1.put("SPACE_USED_MB",rs.getString("SPACE_USED_MB"));
					obj1.put("FREE_SPACE_MB",rs.getString("FREE_SPACE_MB"));
					obj1.put("FREE_SPACE_%",rs.getString("FREE_SPACE_%"));
					obj1.put("NAME : ",rs.getString("NAME"));
					array1.put(obj1);
					
				}		
				
					writeFile1.write(array1.toString());
					writeFile1.flush();
					writeFile1.close();
						
					System.out.println(array1.toString());
					
			}catch(SQLException ex) {
				ex.printStackTrace();
			}finally{
				if (rs != null) {
			        try {
			            rs.close();
			        } catch (SQLException ex1) {
			        }
			    }
			    if (stmt != null) {
			        try {
			            stmt.close();
			        } catch (SQLException ex2) {
			        }
			    }
			    if (connectionAvecSql != null) {
			        try {
			        	connectionAvecSql.close();
			        } catch (SQLException ex3) {
			        }
			    }
			}
				return array1.toString();
				//return obj1.toString(); méthode doit retourner un String 
			}
}

