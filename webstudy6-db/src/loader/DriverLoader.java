package loader;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class DriverLoader
 *
 */
@WebListener
public class DriverLoader implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public DriverLoader() {
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
    public void contextInitialized(ServletContextEvent event)  { 
         //db driver loading은 시스템에서 한번만 실행하면 된다.
    	String driver=event.getServletContext().getInitParameter("driver");
    	try {
			Class.forName(driver);
			System.out.println("DriverLoader Listener 에서 db diver loading");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	
}
