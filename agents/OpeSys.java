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
     * r�cup�rer les donn�es syst�me d'exploitation windows 
     * @return les donn�es du syst�me d'exploitation windows (process cpu load, system cpu load...)
     * @throws IOException
     * @throws JSONException
     */
    public static String os() throws IOException, JSONException {
    	
        
        System.out.println("*************************OS WINDOWS 10***************************");
        
        /**
         * Interface o� JVM est en cours d'ex�cution 
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
     * r�cup�rer les donn�es sous JSON
     * @param obj, prendre un String en param�tre 
     * @return un fichier json avec des donn�es syst�me
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