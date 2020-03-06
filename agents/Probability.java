

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;


/**
 * cette classe permet de calculer les probabilit�s de la 
 * base oracle 
 * en appliquant  le th�oreme naive bayes 
 * @author Tassadit AIT RAMDANE 
 *
 */
public class Probability implements Query  {
	
	
	 Connection con;
    

public Probability(Connection con) {
		super();
		this.con = con;
	}




/**
 * calculer le nombre de lignes dans la table (cette table contient l'historique des donn�es oracle ) 
 * @return n : nombre de lignes dans l'historique (v$sql) 
 * @throws SQLException :  requ�te saisie incorrect 
 */
public float totalnumberrows () throws SQLException {
	
		ResultSet rs;
		Statement stmt =con.createStatement();           // creation de la requ�te
		String query = query_total_rows;
		float n=0;
		stmt.execute(query);							// execution
		rs= stmt.getResultSet();
		if(rs.next())
				
				n=rs.getInt(1);                     ////r�cup�ration du r�sultat
		System.out.println(n);
		return n;
	}
		
	
	
	/** calculer la probabilit� p(cpu)
	 * 
	 * @return p(cpu)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float p_marginale_cpu () throws SQLException {
		
		ResultSet rs;
		Statement stmt =con.createStatement();
		String query =query_cpu;
		float p=0;
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float n=totalnumberrows ();
		System.out.println(p);
		
		System.out.println(p/n);
		
		return p/n;
	}
	
	
	/** calculer la probabilit� p(elapsed_time)
	 * 
	 * @return p(elapsed_time)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float p_marginal_elapsedtime () throws SQLException {
		
		ResultSet rs;
		Statement stmt = con.createStatement();
		String query = query_elapsedtime;
		float p=0;
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		float n = totalnumberrows();
		System.out.println(p/n);
		return p/n;
	}

	
	/** calculer la probabilit� p(wait_time)
	 * 
	 * @return p(wait_time)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float p_marginal_waited () throws SQLException {
		
		ResultSet rs;
		Statement stmt = con.createStatement(); 
		String query = query_waited_time;
		float p=0;
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);				
		float n = totalnumberrows();
		System.out.println(p/n);
		return p/n;
	}
	
	
	
	/** calculer la probabilit� p(physicalreads)
	 * 
	 * @return p(physicalreads)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float priori_physical () throws SQLException {
		ResultSet rs;
		Statement stmt = con.createStatement();
		String query = query_physical_reads;
		float p=0;
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		float n = totalnumberrows();
		System.out.println(p/n);
		return p/n;
	}
	
	/** calculer la probabilit� p(logicalreads)
	 * 
	 * @return p(logicalreads)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float priori_logical () throws SQLException {
		ResultSet rs;
		Statement stmt = con.createStatement();
		String query = query_logical_reads;
		float p=0;
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		float n = totalnumberrows();
		System.out.println(p/n);
		return p/n;
	}
	
	
	/** calculer la probabilit� p(collison)
	 * 
	 * @return p(collison)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float priori_collis () throws SQLException {
		ResultSet rs;
		Statement stmt = con.createStatement();
		String query = query_collision;
		float p=0;
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		float n = totalnumberrows();
		System.out.println(p/n);
		return p/n;
	}
	
	/** calculer la probabilit� p(dispersion)
	 * 
	 * @return p(dispersion)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float priori_disper () throws SQLException {
		ResultSet rs;
		Statement stmt = con.createStatement();
		String query = query_dispers;
		float p=0;
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		float n = totalnumberrows();
		System.out.println(p/n);
		return p/n;
	}
	
	

	
	/** calculer la probabilit� p(physicalreads|cpu)
	 * 
	 * @return p(physicalreads|cpu)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_cpu_physic () throws SQLException {
		String query = query_cpu_physic;
		Statement stmt = con.createStatement();
		float p=0;
		stmt.execute(query);
		ResultSet rs;
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		
		float ptotal1= pinter1/p_marginale_cpu ();
		System.out.println(ptotal1);
		
		return ptotal1;
	}
	
	
	
	/** calculer la probabilit� p(logicallreads|cpu)
	 * 
	 * @return p(logicalreads|cpu)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_cpu_logic () throws SQLException {
		String query = query_cpu_logiq;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		
		float ptotal1= pinter1/p_marginale_cpu();
		
		return ptotal1;
	}
	
	
	/** calculer la probabilit� p(collison|cpu)
	 * 
	 * @return p(collison|cpu)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_cpu_coll () throws SQLException {
		String query = query_cpu_collision;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		
		float ptotal1= pinter1/p_marginale_cpu();
		
		return ptotal1;
	}
	
	
	/** calculer la probabilit� p(dispersion|cpu)
	 * 
	 * @return p(dispersion|cpu)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_cpu_dispre() throws SQLException {
		String query = query_cpu_dispersion;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		
		float ptotal1= pinter1/p_marginale_cpu();
		
		return ptotal1;
	}
	
	
	/** calculer la probabilit� p(physicalreads|elapsedtime)
	 * 
	 * @return p(physicalreads|elapsedtime)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_elapsed_physic () throws SQLException {
		String query =  query_elapsed_physic;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		float n=p_marginal_elapsedtime ();
		float ptotal1= pinter1/n;
		System.out.println(ptotal1);
		return ptotal1;
	}
	
	
	
	/** calculer la probabilit� p(logicalreads|elapsedtime)
	 * 
	 * @return p(logicalreads|elapsedtime)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_elapsed_logic () throws SQLException {
		String query =  query_elapsed_logiq;
		float p=0;
		
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		float n = p_marginal_elapsedtime ();
		float ptotal1= pinter1/n;
		System.out.println(ptotal1);
		
		return ptotal1;
	}
	
	/** calculer la probabilit� p(collison|elapsedtime)
	 * 
	 * @return p(collison|elapsedtime)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_elapsed_coll () throws SQLException {
		String query = query_elapsed_collision ;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		float n=p_marginal_elapsedtime ();
		float ptotal1= pinter1/n;
		System.out.println(ptotal1);
		return ptotal1;
	}
	
	
	
	/** calculer la probabilit� p(dispersion|elapsedtime)
	 * 
	 * @return p(dispersion|elapsedtime)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_elapsed_dispre() throws SQLException {
		String query = query_elapsed_dispersion;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		float n=p_marginal_elapsedtime ();
		float ptotal1= pinter1/n;
		System.out.println(ptotal1);
		return ptotal1;
	}
	

	
	/** calculer la probabilit� p(physicalreads|waitedtime)
	 * 
	 * @return p(physicalreads|waitedtime)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_waited_physic () throws SQLException {
		String query =  query_waited_physic;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		float n=p_marginal_waited ();
		float ptotal1= pinter1/n;
		System.out.println(ptotal1);
		return ptotal1;
	}
	
	
	/** calculer la probabilit� p(logicalreads|waitedtime)
	 * 
	 * @return p(collision|waitedtime)
	 * @throws SQLException requ�te saisie incorrect
	 */

	public float query_waited_logic () throws SQLException {
		String query =  query_waited_logiq;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		float n=p_marginal_waited ();
		float ptotal1= pinter1/n;
		System.out.println(ptotal1);
		return ptotal1;
	}
	
	
	
	/** calculer la probabilit� p(logicalreads|waitedtime)
	 * 
	 * @return p(collsion|waitedtime)
	 * @throws SQLException requ�te saisie incorrect
	 */
	public float query_waited_coll () throws SQLException {
		String query = query_waited_collision ;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		float n=p_marginal_waited ();
		float ptotal1= pinter1/n;
		System.out.println(ptotal1);
		return ptotal1;
	}
	
	/** calculer la probabilit� p(dispersion|waitedtime)
	 * 
	 * @return p(dispersion|waitedtime)
	 * @throws SQLException requ�te saisie incorrect
	 * */
	public float query_waited_dispre() throws SQLException {
		String query = query_waited_dispersion;
		float p=0;
		ResultSet rs;
		Statement stmt = con.createStatement();
		stmt.execute(query);
		rs= stmt.getResultSet();
		if(rs.next())
				
				p=rs.getInt(1);
		
		float pinter1 = p/totalnumberrows(); 
		float n=p_marginal_waited ();
		float ptotal1= pinter1/n;
		System.out.println(ptotal1);
		return ptotal1;
	}





	
		
		
	}
	


