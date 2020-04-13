
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PerformanceIndicatorMySql2 extends Thread{
	static Connection connectionAvecMySql;
	
	public PerformanceIndicatorMySql2() {}
	
	/**
	 * REQUETE : les indicateurs globaux MySql
	 */
	private static final String IndicatorG = "SELECT * FROM performance_schema.global_status;";
 
	/**
	 * récupérer les indicateurs globaux mysql 
	 * @param stmt, pour exécuter une instruction SQL
	 * @return les indicateurs globaux mysql 
	 * @throws JSONException
	 * @throws InterruptedException
	 * @throws SQLException
	 * @throws IOException
	 */
	public String indicatorGlobalMySql(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
		
		/**
		 * Connection
		 */
		AgentMySQL_D agent = new AgentMySQL_D();
		connectionAvecMySql = agent.getConnection();
		
		/**
		 * Objet rs va contenir le résultat de la requête SQL
		 */
		ResultSet rs;
	    
	    sleep(4000);
	    
	    stmt = connectionAvecMySql.createStatement();

		rs = stmt.executeQuery(IndicatorG);
		
		JSONObject obj = new JSONObject();
		JSONArray array = new JSONArray();
	
			try {
			
				FileWriter writeFile = null;
				
				writeFile = new FileWriter("IndicatorGlobalMysql.json");
				
				while (rs.next()){
					
					//System.out.println("VARIABLE_NAME : "+rs.getString("VARIABLE_NAME")+" \t");
					//System.out.println("VARIABLE_VALUE : "+rs.getString("VARIABLE_VALUE")+" \t");
					
					obj = new JSONObject();
					obj.put("VARIABLE_NAME : ",rs.getString("VARIABLE_NAME"));
					obj.put("VARIABLE_VALUE : ",rs.getString("VARIABLE_VALUE"));
					array.put(obj);
					
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
			    if (connectionAvecMySql != null) {
			        try {
			        	connectionAvecMySql.close();
			        } catch (SQLException ex3) {
			        }
			    }
			}
				
				return array.toString();
	}
	
	
	/**
	 * REQUETE : les Indicateurs selectionnés et demandés par l'encadrant pour MySql
	 */
	private static final String IndicatorG1 = "SELECT * FROM performance_schema.global_status \r\n" + 
			"where VARIABLE_NAME like 'Key_read_requests' \r\n" + 
			"or VARIABLE_NAME like 'Key_reads' \r\n" + 
			"or VARIABLE_NAME like 'Key_write_requests' \r\n" + 
			"or VARIABLE_NAME like 'Key_writes' \r\n" + 
			"or VARIABLE_NAME like 'Qcache_free_blocks'\r\n" + 
			"or VARIABLE_NAME like 'Qcache_free_memory' \r\n" + 
			"or VARIABLE_NAME like 'Qcache_hits' \r\n" + 
			"or VARIABLE_NAME like 'Qcache_inserts' \r\n" + 
			"or VARIABLE_NAME like 'Qcache_lowmem_prunes'\r\n" + 
			"or VARIABLE_NAME like 'Qcache_not_cached'";
	
	
	/**
	 * récupérer les Indicateurs selectionnés parmis les indicateurs globaux MySql
	 * @param stmt, pour exécuter une instruction SQL
	 * @return les Indicateurs selectionnés
	 * @throws JSONException
	 * @throws InterruptedException
	 * @throws SQLException
	 * @throws IOException
	 */
	public String indicatorGlobalMySqlSelected(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
		
		AgentMySQL_D agent = new AgentMySQL_D();
		connectionAvecMySql = agent.getConnection();
		
		ResultSet rs;
	    
	    sleep(4000);
	    
	    stmt = connectionAvecMySql.createStatement();

		rs = stmt.executeQuery(IndicatorG1);
		
		JSONObject obj1 = new JSONObject();
		JSONArray array1 = new JSONArray();
		
			try {
				
				FileWriter writeFile1 = null;
				
				writeFile1 = new FileWriter("IndicatorGlobalMysqlSelected.json");

				while (rs.next()){
					
					obj1 = new JSONObject();
					obj1.put("VARIABLE_NAME : ",rs.getString("VARIABLE_NAME"));
					obj1.put("VARIABLE_VALUE : ",rs.getString("VARIABLE_VALUE"));
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
			    if (connectionAvecMySql != null) {
			        try {
			        	connectionAvecMySql.close();
			        } catch (SQLException ex3) {
			        }
			    }
			}
				
				return array1.toString();
	}
	
	/**
	 * REQUETE : Physical reads et Logical Reads pour l'annimation pour MySql
	 */
	private static final String Indicator1 = "SELECT * FROM performance_schema.global_status\r\n" + 
			"where VARIABLE_NAME like 'Innodb_buffer_pool_reads'\r\n" +   //physical reads 
			"or VARIABLE_NAME like 'Innodb_buffer_pool_read_requests';";  //logical reads 
	
	/**
	 * récupérer physical reads et logical reads parmis les indicateurs globaux MySql
	 * @param stmt, pour exécuter une instruction SQL
	 * @return physical reads et logical reads
	 * @throws JSONException
	 * @throws InterruptedException
	 * @throws SQLException
	 * @throws IOException
	 */
	public static String indicator(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
		
		AgentMySQL_D agent = new AgentMySQL_D();
		connectionAvecMySql = agent.getConnection();
		
		ResultSet rs;
	    
	    sleep(4000);
	    
	    stmt = connectionAvecMySql.createStatement();

		rs = stmt.executeQuery(Indicator1);
		
		JSONObject obj2 = new JSONObject();
		
			try {
				
				FileWriter writeFile2 = null;
				
				writeFile2 = new FileWriter("Physical_Logical_ReadsMysql3.json");

				while (rs.next()){
					
					obj2 = new JSONObject();
					obj2.put("VARIABLE_NAME : ",rs.getString("VARIABLE_NAME"));
					obj2.put("VARIABLE_VALUE : ",rs.getString("VARIABLE_VALUE"));
					
				}
				
					writeFile2.write(obj2.toString());
					writeFile2.flush();
					writeFile2.close();
					System.out.println(obj2.toString());
						
					
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
			    if (connectionAvecMySql != null) {
			        try {
			        	connectionAvecMySql.close();
			        } catch (SQLException ex3) {
			        }
			    }
			}
				
				return obj2.toString();
	}
	
	/**
	 * REQUETE : Indicateur pour collision (animation) pour MySql
	 */
	private static final String Indicator2 = "SELECT * FROM performance_schema.global_status\r\n" + 
			"where VARIABLE_NAME like 'Innodb_row_lock_waits'";  //collision
	

	/**
	 * récupérer l'indicateur pour la collision parmis les indicateurs globaux MySql
	 * @param stmt, pour exécuter une instruction SQL
	 * @return indicateur pour la collision
	 * @throws JSONException
	 * @throws InterruptedException
	 * @throws SQLException
	 * @throws IOException
	 */
	public String indicator2(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
		
		AgentMySQL_D agent = new AgentMySQL_D();
		connectionAvecMySql = agent.getConnection();
		
		ResultSet rs;
	    
	    sleep(4000);
	    
	    stmt = connectionAvecMySql.createStatement();

		rs = stmt.executeQuery(Indicator2);
		
		JSONObject obj3 = new JSONObject();
		
			try {
				
				FileWriter writeFile3 = null;
				
				writeFile3 = new FileWriter("CollisionMysql3.json");

				while (rs.next()){
					
					obj3 = new JSONObject();
					obj3.put("VARIABLE_NAME : ",rs.getString("VARIABLE_NAME"));
					obj3.put("VARIABLE_VALUE : ",rs.getString("VARIABLE_VALUE"));
					
				}
				
					writeFile3.write(obj3.toString());
					writeFile3.flush();
					writeFile3.close();
					System.out.println(obj3.toString());
						
					
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
			    if (connectionAvecMySql != null) {
			        try {
			        	connectionAvecMySql.close();
			        } catch (SQLException ex3) {
			        }
			    }
			}
				
				return obj3.toString();
	}
	
	
	/**
	 * REQUETE : Les indicateurs de Performance niveau Queries pour MySql 
	 */
	private static final String Perform = "SELECT DIGEST,DIGEST_TEXT,COUNT_STAR,SUM_TIMER_WAIT,SUM_LOCK_TIME,SUM_ROWS_SENT,FIRST_SEEN \r\n" + 
			"FROM performance_schema.events_statements_summary_by_digest ORDER BY FIRST_SEEN ASC LIMIT 42,52;";
	
	
	/**
	 * récupérer Les indicateurs de Performance niveau Queries pour MySql
	 * @param stmt, pour exécuter une instruction SQL
	 * @return Les indicateurs de Performance niveau Queries 
	 * @throws JSONException
	 * @throws InterruptedException
	 * @throws SQLException
	 * @throws IOException
	 */
	public static String performanceIndicator(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
		
		AgentMySQL_D agent = new AgentMySQL_D();
		connectionAvecMySql = agent.getConnection();
		
		ResultSet rs;
	    
	    sleep(4000);
	    
	    stmt = connectionAvecMySql.createStatement();

		rs = stmt.executeQuery(Perform);
		
		JSONObject obj4 = new JSONObject();
		JSONArray array4 = new JSONArray();
		
			try {
				
				FileWriter writeFile4 = null;
				
				writeFile4 = new FileWriter("PerformanceMysql.json");
				
				while (rs.next()){
					
					obj4 = new JSONObject();
					String p1 =rs.getString("FIRST_SEEN");
					
					obj4.put("DIGEST",rs.getString("DIGEST"));
					obj4.put("DIGEST_TEXT",rs.getString("DIGEST_TEXT"));
					obj4.put("COUNT_STAR",rs.getString("COUNT_STAR"));
					obj4.put("SUM_TIMER_WAIT",rs.getString("SUM_TIMER_WAIT"));
					obj4.put("SUM_LOCK_TIME",rs.getString("SUM_LOCK_TIME"));
					obj4.put("SUM_ROWS_SENT",rs.getString("SUM_ROWS_SENT"));
					obj4.put("FIRST_SEEN",p1);
					
				
					array4.put(obj4);
					
				}
					writeFile4.write(array4.toString());
					writeFile4.flush();
					writeFile4.close();
					System.out.println(array4.toString());
					
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
			    if (connectionAvecMySql != null) {
			        try {
			        	connectionAvecMySql.close();
			        } catch (SQLException ex3) {
			        }
			    }
			}
				return array4.toString();
		}
	
		
		/**
		 * REQUETE : User de la base de données MySql
		 */
		private static final String Users = "SELECT DISTINCT(user) FROM mysql.user;";
		
		/**
		 * récupérer user de la base de données MySql 
		 * @param stmt, pour exécuter une instruction SQL
		 * @return User de la base de données 
		 * @throws JSONException
		 * @throws InterruptedException
		 * @throws SQLException
		 * @throws IOException
		 */
		public static String users(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
			
			AgentMySQL_D agent = new AgentMySQL_D();
			connectionAvecMySql = agent.getConnection();
			
			ResultSet rs;
		    
		    sleep(4000);
		    
		    stmt = connectionAvecMySql.createStatement();

			rs = stmt.executeQuery(Users);
			
			JSONObject obj5 = new JSONObject();
			JSONArray array5 = new JSONArray();
			
				try {
					
					FileWriter writeFile5 = null;
					
					writeFile5 = new FileWriter("Users.json");
					
					while (rs.next()){
						
						
						obj5 = new JSONObject();
						
						obj5.put("User",rs.getString("user"));
						
					
						array5.put(obj5);
						
					}
						writeFile5.write(array5.toString());
						writeFile5.flush();
						writeFile5.close();
						System.out.println(array5.toString());
						
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
				    if (connectionAvecMySql != null) {
				        try {
				        	connectionAvecMySql.close();
				        } catch (SQLException ex3) {
				        }
				    }
				}
					return array5.toString();
			}
}