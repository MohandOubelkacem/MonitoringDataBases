import java.net.UnknownHostException;
import com.mongodb.MongoClient;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;

import com.mongodb.Mongo;
import com.mongodb.DB;

public class AgentMongo {
	public static void main(String args[]) throws UnknownHostException {
		try {
		MongoClient mongoClient = new MongoClient("localhost", 27017);
		System.out.println("Connection succed !");
	
		}catch (Exception e) {
		System.err.println("Impossible de se conecter à la base de donnée");
		}
		}
}
