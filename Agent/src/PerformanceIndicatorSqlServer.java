
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PerformanceIndicatorSqlServer extends Thread{
	
	static Connection connectionAvecSql;
	
	public PerformanceIndicatorSqlServer() {};
	
	/**
	 * REQUETE : Les Indicateurs de Performance niveau Queries pour Sql Server
	 */
	static String performanceIndicator= "SELECT getdate() ddate, s2.dbid,\r\n" + 
				"    s1.sql_handle, \r\n" + 
				"    (SELECT TOP 1 SUBSTRING(s2.text,statement_start_offset / 2+1 ,\r\n" + 
				"      ( (CASE WHEN statement_end_offset = -1\r\n" + 
				"         THEN (LEN(CONVERT(nvarchar(max),s2.text)) * 2)\r\n" + 
				"         ELSE statement_end_offset END)  - statement_start_offset) / 2+1))  AS sql_statement,\r\n" + 
				"    execution_count,\r\n" + 
				"    plan_generation_num,\r\n" + 
				"    last_execution_time,  \r\n" + 
				"    total_worker_time,\r\n" + 
				"    last_worker_time,\r\n" + 
				"    min_worker_time,\r\n" + 
				"    max_worker_time,\r\n" + 
				"    total_physical_reads,\r\n" + 
				"    last_physical_reads,\r\n" + 
				"    min_physical_reads, \r\n" + 
				"    max_physical_reads, \r\n" + 
				"    total_logical_writes,\r\n" + 
				"    last_logical_writes,\r\n" + 
				"    min_logical_writes,\r\n" + 
				"    max_logical_writes,\r\n" + 
				"    total_logical_reads,\r\n" + 
				"    last_logical_reads,\r\n" + 
				"    min_logical_reads, \r\n" + 
				"    max_logical_reads,\r\n" + 
				"    total_elapsed_time,\r\n" + 
				"    last_elapsed_time,\r\n" + 
				"    min_elapsed_time,\r\n" + 
				"    max_elapsed_time,\r\n" + 
				"    total_clr_time,\r\n" + 
				"    max_clr_time,\r\n" + 
				"    min_clr_time,\r\n" + 
				"    total_rows,\r\n" + 
				"    min_rows,\r\n" + 
				"    max_rows,\r\n" + 
				"    last_rows,\r\n" + 
				"    query_hash,\r\n" + 
				"    query_plan_hash\r\n" + 
				"----into t_awr_stats\r\n" + 
				"FROM sys.dm_exec_query_stats AS s1\r\n" + 
				"CROSS APPLY sys.dm_exec_sql_text(sql_handle) AS s2 \r\n" + 
				"WHERE s2.objectid is null\r\n" + 
				"order by total_worker_time;";
     
	
	/**
	 * récupérer les Indicateurs de Performance pour Sql Server
	 * @param stmt, pour exécuter une instruction SQL
	 * @return les Indicateurs de Performance
	 * @throws InterruptedException
	 * @throws SQLException
	 * @throws IOException
	 * @throws JSONException
	 */
	public static ArrayList performanceIndicator(Statement stmt) throws InterruptedException, SQLException, IOException, JSONException{
		
		/**
		 * Connection  
		 */
		AgentSqlServer agent = new AgentSqlServer();
		connectionAvecSql = agent.getConnection();
		
		/**
		 * Objet rs va contenir le résultat de la requête SQL 
		 */
		ResultSet rs;
	    
	    sleep(4000);
	    
	    stmt = connectionAvecSql.createStatement();

		rs = stmt.executeQuery(performanceIndicator);
		ArrayList<ArrayList<String>> k=new ArrayList();
		ArrayList <String>tableau = null;
		JSONObject obj = new JSONObject();
		JSONArray array = new JSONArray();
		
		try {
			
			//File 
			FileWriter writeFile = null;
			//Creer file 
			writeFile = new FileWriter("PerformanceIndicatorQueries.json");
			
			while(rs.next()) {
				
				obj = new JSONObject();
				
				obj.put("Date",rs.getString("ddate"));
				obj.put("Dbid",rs.getString("dbid"));
				obj.put("SQL_handle",rs.getString("sql_handle"));
				obj.put("SQL_statement",rs.getString("sql_statement"));
				obj.put("Execution_count",rs.getInt("execution_count"));
				obj.put("Plan_generation_num",rs.getInt("plan_generation_num"));
				obj.put("Last_execution_time",rs.getString("last_execution_time"));
				obj.put("Total_worker_time",rs.getInt("total_worker_time"));
				obj.put("Last_worker_time",rs.getInt("last_worker_time"));
				obj.put("Min_worker_time",rs.getInt("min_worker_time"));
				obj.put("Max_worker_time",rs.getInt("max_worker_time"));
				obj.put("Total_physical_reads",rs.getInt("total_physical_reads"));
				obj.put("Last_physical_reads",rs.getInt("last_physical_reads"));
				obj.put("Min_physical_reads",rs.getInt("min_physical_reads"));
				obj.put("Max_physical_reads",rs.getInt("max_physical_reads"));
				obj.put("Total_logical_writes",rs.getInt("total_logical_writes"));
				obj.put("Last_logical_writes",rs.getInt("last_logical_writes"));
				obj.put("Min_logical_writes",rs.getInt("min_logical_writes"));
				obj.put("Max_logical_writes",rs.getInt("max_logical_writes"));
				obj.put("Total_logical_reads",rs.getInt("total_logical_reads"));
				obj.put("Last_logical_reads",rs.getInt("last_logical_reads"));
				obj.put("Min_logical_reads",rs.getInt("min_logical_reads"));
				obj.put("Max_logical_reads",rs.getInt("max_logical_reads"));
				obj.put("Total_elapsed_time",rs.getInt("total_elapsed_time"));
				obj.put("Last_elapsed_time",rs.getInt("last_elapsed_time"));
				obj.put("Min_elapsed_time",rs.getInt("min_elapsed_time"));
				obj.put("Max_elapsed_time",rs.getInt("max_elapsed_time"));
				obj.put("Total_clr_time",rs.getInt("total_clr_time"));
				obj.put("Max_clr_time",rs.getInt("max_clr_time"));
				obj.put("Min_clr_time",rs.getInt("min_clr_time"));
				obj.put("Total_rows",rs.getInt("total_rows"));
				obj.put("Min_rows",rs.getInt("min_rows"));
				obj.put("Max_rows",rs.getInt("max_rows"));
				obj.put("Last_rows",rs.getInt("last_rows"));
				obj.put("Query_hash",rs.getString("query_hash"));
				obj.put("Query_plan_hash",rs.getString("query_plan_hash"));
				tableau.add(rs.getInt("execution_count"), performanceIndicator);
				k.add(0,tableau);
				tableau.add(rs.getInt("total_worker_time"),performanceIndicator);
				k.add(1,tableau);
				tableau.add(rs.getInt("total_elapsed_time"),performanceIndicator);
				k.add(2,tableau);
				tableau.add(rs.getInt("total_physical_reads"),performanceIndicator);
				k.add(3,tableau);
				tableau.add(rs.getInt("total_logical_reads"),performanceIndicator);
				k.add(4,tableau);
				System.out.println();
				
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
		    if (connectionAvecSql != null) {
		        try {
		        	connectionAvecSql.close();
		        } catch (SQLException ex3) {
		        }
		    }
		}		
		return k;  
        }
        
	

		/**
		 * REQUETE : Les Indicateurs Globaux pour Sql Server
		 */
		private static final String IndicatorG = "SELECT *FROM sys.dm_os_performance_counters;";
	//	private static final String IndicatorG = "SELECT object_name, counter_name, instance_name, cntr_value, cntr_type  \r\n" + 
	//	"FROM sys.dm_os_performance_counters;";
	//	private static final String IndicatorG = "SELECT *FROM sys.dm_os_performance_counters \r\n" + 
	//	"WHERE counter_name LIKE '%Memory/sec%';";

		
		/**
		 * récupérer les Indicateurs Globaux pour Sql Server
		 * @param stmt, pour exécuter une instruction SQL
		 * @return les Indicateurs Globaux pour Sql Server
		 * @throws JSONException
		 * @throws SQLException
		 * @throws IOException
		 * @throws InterruptedException
		 */
		public static String indicatorGlobal(Statement stmt) throws JSONException, SQLException, IOException, InterruptedException{
			
			AgentSqlServer agent = new AgentSqlServer();
			connectionAvecSql = agent.getConnection();
			
			ResultSet rs;
		    
		    sleep(4000);
		    
		    stmt = connectionAvecSql.createStatement();

			rs = stmt.executeQuery(IndicatorG);
			
			JSONObject obj1 = new JSONObject();
			JSONArray array1 = new JSONArray();
		
			try {
				
				FileWriter writeFile1 = null;
				
				writeFile1 = new FileWriter("IndicatorGlobalSqlServer.json");
				
				while (rs.next()){
					
					//Test
//					System.out.println("Object_Name : "+rs.getString("object_name")+" \t");
//					System.out.println("Counter_Name : "+rs.getString("counter_name")+" \t");
//					System.out.println("Instance_Name : "+rs.getString("instance_name")+" \t");
//					System.out.println("Cntr_value : "+rs.getString("cntr_value")+" \t");
//					System.out.println("Cntr_type : "+rs.getString("cntr_type")+" \t");
//					System.out.println();
					
					obj1 = new JSONObject();
					
					obj1.put("Object_Name",rs.getString("object_name"));
					obj1.put("Counter_Name",rs.getString("counter_name"));
					obj1.put("Instance_Name",rs.getString("instance_name"));
					obj1.put("Cntr_value",rs.getString("cntr_value"));
					obj1.put("Cntr_type",rs.getString("cntr_type"));
					
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
		
			}
		
		/**
		 * REQUETE : Physical reads et Logical Reads pour l'annimation pour Sql Server
		 */
		private static final String IndicatorG1 = "SELECT object_name,counter_name, cntr_value \r\n" + 
				"FROM sys.dm_os_performance_counters  \r\n" + 
				"WHERE counter_name = 'Page Lookups/Sec'\r\n" + 
				"or counter_name = 'Page Reads/Sec';";
		
		/**
		 récupérer physical reads et logical reads parmis les indicateurs globaux Sql Server
		 * @param stmt, pour exécuter une instruction SQL
		 * @return physical reads et logical reads
		 * @throws JSONException
		 * @throws SQLException
		 * @throws IOException
		 * @throws InterruptedException
		 */
		public static String indicator(Statement stmt) throws JSONException, SQLException, IOException, InterruptedException{
			
			AgentSqlServer agent = new AgentSqlServer();
			connectionAvecSql = agent.getConnection();
			
			ResultSet rs;
		    
		    sleep(4000);
		    
		    stmt = connectionAvecSql.createStatement();

			rs = stmt.executeQuery(IndicatorG1);
			
			JSONObject obj2 = new JSONObject();
			JSONArray array2 = new JSONArray();
		
			try {
				
				FileWriter writeFile2 = null;
				
				writeFile2 = new FileWriter("Physical_Logical_SqlServer.json");
				
				while (rs.next()){
					
					obj2 = new JSONObject();
					
					obj2.put("Object_Name",rs.getString("object_name"));
					obj2.put("Counter_Name",rs.getString("counter_name"));
					obj2.put("Cntr_value",rs.getString("cntr_value"));
					
					array2.put(obj2);
					
				}
					 
						
					writeFile2.write(array2.toString());
					writeFile2.flush();
					writeFile2.close();
						
					System.out.println(array2.toString());	
						
					
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
				
			return array2.toString(); 
		
			}
		
		
			/**
			 * REQUETE : Indicateur pour collision (animation) pour Sql Server 
			 */
			private static final String IndicatorG2 = "select *\r\n" + 
						"From sys.sysprocesses\r\n" + 
						"where lastwaittype LIKE '%LCK%';";
				
			
			/**
			 * récupérer l'indicateur pour la collision parmis les indicateurs globaux Sql Server
			 * @param stmt, pour exécuter une instruction SQL
			 * @return indicateur pour la collision
			 * @throws JSONException
			 * @throws SQLException
			 * @throws IOException
			 * @throws InterruptedException
			 */
			public static String indicator2(Statement stmt) throws JSONException, SQLException, IOException, InterruptedException{
					
					AgentSqlServer agent = new AgentSqlServer();
					connectionAvecSql = agent.getConnection();
					
					ResultSet rs;
				    
				    sleep(4000);
				    
				    stmt = connectionAvecSql.createStatement();

					rs = stmt.executeQuery(IndicatorG2);
					
					JSONObject obj3 = new JSONObject();
					JSONArray array3 = new JSONArray();
				
					try {
						
						FileWriter writeFile3 = null;
						
						writeFile3 = new FileWriter("CollisionSqlServer.json");
						
						while (rs.next()){
							
							obj3 = new JSONObject();
							
							obj3.put("Lastwaittype",rs.getString("lastwaittype"));
							obj3.put("Waittime",rs.getString("waittime"));
							
							array3.put(obj3);
							
						}
							 
								
							writeFile3.write(array3.toString());
							writeFile3.flush();
							writeFile3.close();
								
							System.out.println(array3.toString());	
								
							
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
						
					return array3.toString(); 
				
				}		
	
		
		/**
		 * REQUETE : Les Clients de la base de données Sql Server
		 */
		private static final String Client = "sp_who2;";
		
		/**
		 * récupérer les Clients de Sql Server 
		 * @param stmt, pour exécuter une instruction SQL
		 * @return les Clients
		 * @throws JSONException
		 * @throws IOException
		 * @throws InterruptedException
		 * @throws SQLException
		 */
		public String client(Statement stmt) throws JSONException, IOException, InterruptedException, SQLException{
			
			AgentSqlServer agent = new AgentSqlServer();
			connectionAvecSql = agent.getConnection();
			
			ResultSet rs;
		    
		    sleep(4000);
		    
		    stmt = connectionAvecSql.createStatement();

			rs = stmt.executeQuery(Client);
			
			JSONObject obj4 = new JSONObject();
			JSONArray array4 = new JSONArray();
		
		
				try {
					
					FileWriter writeFile4 = null;
					
					writeFile4 = new FileWriter("Client.json");
					
					while (rs.next()){
					
						obj4 = new JSONObject();
						
						obj4.put("HostName",rs.getString("HostName"));
						obj4.put("CpuTime",rs.getString("CPUTime"));
						obj4.put("Login",rs.getString("Login"));
						System.out.println();
						
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
			    if (connectionAvecSql != null) {
			        try {
			        	connectionAvecSql.close();
			        } catch (SQLException ex3) {
			        }
			    }
			}
				return array4.toString(); 
				
			}
		
}