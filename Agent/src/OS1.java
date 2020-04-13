
import java.io.FileWriter;

import java.io.IOException;
import java.lang.management.ManagementFactory;

import java.sql.SQLException;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.sun.management.OperatingSystemMXBean;

public class OS1{
	 /**
	 * permet de récupérer les données du  système d'exploitation
	
	 * @return retourne les données du systÃšme d'exploitation  sous format json
	 */
	 public static String Os() throws SQLException, ClassNotFoundException, IOException, JSONException {
      // la classe OperatingSystemMXBean permet de RÃ©cupÃ©rer les données système 
	   OperatingSystemMXBean operatingSystemMXBean = (OperatingSystemMXBean) ManagementFactory.getOperatingSystemMXBean();
	
     
     
        JSONObject obj1 = new JSONObject();
        JSONArray tabJson = new JSONArray();
        FileWriter file=new FileWriter("/home/makhoukhene/dbbrain1/json/IndicatorOS.json");

        obj1.put ("Available processors: " , operatingSystemMXBean.getAvailableProcessors());
        obj1.put ("Average load: " , operatingSystemMXBean.getSystemLoadAverage());

        obj1.put ("Committed virtual memory : " ,operatingSystemMXBean.getCommittedVirtualMemorySize());

        obj1.put ("Total physical memory: " , operatingSystemMXBean.getTotalPhysicalMemorySize());
        obj1.put ("Free physical memory: " ,operatingSystemMXBean.getFreePhysicalMemorySize());

        obj1.put ("Total swap space: " , operatingSystemMXBean.getTotalSwapSpaceSize());
        obj1.put ("Free swap space: " , operatingSystemMXBean.getFreeSwapSpaceSize());

        obj1.put ("Process CPU load: " , operatingSystemMXBean.getProcessCpuLoad() );
        obj1.put ("Process CPU time: " ,operatingSystemMXBean.getProcessCpuTime());
        obj1.put ("System CPU load: " ,operatingSystemMXBean.getSystemCpuLoad() );
        
       tabJson.put(obj1);
   		file.write(tabJson.toString());
   		file.flush();
   		file.close();	

       
        return tabJson.toString();
   }
}