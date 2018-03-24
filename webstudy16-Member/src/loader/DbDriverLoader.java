package loader;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class DbDriverLoader
 *
 */
@WebListener
public class DbDriverLoader implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public DbDriverLoader() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
         try {
			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("db driver loading");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
	
}
