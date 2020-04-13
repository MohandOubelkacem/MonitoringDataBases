import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;

import org.json.JSONException;

public class MainOs1 {
	public static void main(String [] args) throws ClassNotFoundException, SQLException, IOException, JSONException {
		  Properties p = System.getProperties();
          String osName = p.getProperty("os.name");
          String osVersion = p.getProperty("os.version");
          
          if((osVersion != null) && (osVersion.length() != 0))
                  osName += " => "+osVersion;
          osName += "" + p.getProperty("sun.os.patch.level");
          osName += " (" + p.getProperty("os.arch")+")";
          System.out.println(osName);
          
		
		
		OS1.Os();
		System.out.println("Data recuperated !");
}
	}
