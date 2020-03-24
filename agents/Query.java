/**
 * cette interface regroupe les requêtes
 * celles-ci sont utilisées afin  de calculer les probabilitées 
 * @author Tassadit AIT RAMDANE 
 *
 */
public interface Query {

	public static final String query_cpu="select count(*) from v$sql where cpu_time > 5000";
	
	public static final String query_elapsedtime= "select count(*) from v$sql where elapsed_time > 5000";
	
	
	public static final String query_waited_time =  "select count(*) from v$sql where user_io_wait_time> 5000";
			
	

	public static final String  query_cpu_physic = "select count (*) from v$sql where cpu_time > 5000 and buffer_gets > 5000";
	
	public static final String query_cpu_logiq ="select count (*) from v$sql where cpu_time > 5000 and  disk_reads > 500";
	
	public static final String query_cpu_collision = "select count (*) from Test.t_hist_sqlstat where cpu_time_total > 5000 and  (ccwait_total) > 5000";
	
	public static final String query_cpu_dispersion="select count (*) from v$sql where cpu_time > 5000 and ROWS_PROCESSED >5000";
	

			

	public static final String  query_elapsed_physic = "select count (*) from v$sql where elapsed_time > 5000 and buffer_gets > 5000";
	
	public static final String query_elapsed_logiq ="select count (*) from v$sql where elapsed_time > 5000 and  disk_reads > 500";
	
	public static final String query_elapsed_collision = "select count (*) from Test.t_hist_sqlstat where elapsed_time_total > 5000 and  (ccwait_total) > 5000";
	
	public static final String query_elapsed_dispersion="select count (*) from v$sql where elapsed_time > 5000 and ROWS_PROCESSED >5000";
	
	
	public static final String  query_waited_physic = "select count (*) from v$sql where user_io_wait_time > 5000 and buffer_gets > 5000";
	
	public static final String query_waited_logiq ="select count (*) from v$sql where user_io_wait_time > 5000 and  disk_reads > 500";
	
	public static final String query_waited_collision = "select count (*) from Test.t_hist_sqlstat where iowait_total > 5000 and  (ccwait_total) > 5000";
	
	public static final String query_waited_dispersion="select count (*) from v$sql where user_io_wait_time > 5000 and ROWS_PROCESSED >5000";
	
	
	public static final String query_total_rows="select count (*) from v$sql";
	

	public static final String query_physical_reads ="select count (*) from v$sql where buffer_gets > 5000";
	
	public static final String query_logical_reads ="select count (*) from v$sql where disk_reads  > 5000";
	
	public static final String query_collision ="select count (*) from Test.t_hist_sqlstat  where  ccwait > 5000";
	
	public static final String query_dispers="select count (*) from v$sql where  ROWS_PROCESSED > 5000";
	
	
}
	