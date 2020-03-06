package l3w1_Projet;

import java.io.IOException;
import java.util.Properties;
import org.json.JSONException;

public class OpeSysMain extends OpeSys {
    /**
     * La fonction principale qui invoquera éventuellement les autres fonctions, retourne les données système d'exploitation windows 
     * @param args, le nom d'un tableau
     * @throws IOException
     * @throws JSONException
     */
    public static void main(String[] args) throws IOException, JSONException {
            
    		/**
    		 * Nom et la version
    		 */
            Properties p = System.getProperties();
            String osName = p.getProperty("os.name");
            String osVersion = p.getProperty("os.version");
            
            if((osVersion != null) && (osVersion.length() != 0))
                    osName += " => "+osVersion;
            osName += "" + p.getProperty("sun.os.patch.level");
            osName += " (" + p.getProperty("os.arch")+")";
            System.out.println(osName);
            
            /**
             * Affiche les données OpeSys dans un fichier 
             */
            String obj = null;
            OpeSysMain opeSys = new OpeSysMain();
            obj = opeSys.os();
            opeSys.filewrite(obj);
    	
            /**
             * Autre manière 
             */
    		/*OperatingSystemMXBean osMxBean = (OperatingSystemMXBean) ManagementFactory.getOperatingSystemMXBean(); 
            com.sun.management.OperatingSystemMXBean privateOsMxBean = (com.sun.management.OperatingSystemMXBean) osMxBean; 
            System.out.println(privateOsMxBean.getArch()); 
            System.out.println(privateOsMxBean.getName());
            System.out.println(privateOsMxBean.getSystemLoadAverage());
            System.out.println(privateOsMxBean.getAvailableProcessors());*/
}
}
