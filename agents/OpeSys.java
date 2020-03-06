package l3w1_Projet;

import java.io.FileWriter;
import java.io.IOException;
import java.lang.management.ManagementFactory;
import java.lang.management.OperatingSystemMXBean;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

import org.json.JSONException;
import org.json.JSONObject;


public class OpeSys {
    
    public OpeSys() {};
    

    /**
     * récupérer les données système d'exploitation windows 
     * @return les données du système d'exploitation windows (process cpu load, system cpu load...)
     * @throws IOException
     * @throws JSONException
     */
    public static String os() throws IOException, JSONException {
    	
        
        System.out.println("*************************OS WINDOWS 10***************************");
        
        /**
         * Interface où JVM est en cours d'exécution 
         */
        OperatingSystemMXBean operatingSystemMXBean = ManagementFactory.getOperatingSystemMXBean();
        JSONObject obj = new JSONObject();
        for (Method method : operatingSystemMXBean.getClass().getDeclaredMethods()) {
            method.setAccessible(true);
            if (method.getName().startsWith("get") && Modifier.isPublic(method.getModifiers())) {
                    Object value;
                try {
                    value = method.invoke(operatingSystemMXBean);
                } catch (Exception e) {
                    value = e;
                }
               
                /**
                 *suppression de get  
                 */
                System.out.println(method.getName().substring(3) + " = " + value); 
                obj.put(method.getName(),value);
            } 
          }
        return obj.toString();
        }
    
    /**
     * récupérer les données sous JSON
     * @param obj, prendre un String en paramètre 
     * @return un fichier json avec des données système
     */
    public Object filewrite(String obj) {
            FileWriter writeFile = null;                
            try {
                    writeFile = new FileWriter("DonneeOpeSys.json");
                    writeFile.write(obj.toString());
                    writeFile.close();
            } catch (IOException e) {
                    e.printStackTrace();
            }
            return writeFile;
    }
    
}