package model;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class DataSourceManager {
	private static DataSourceManager instance=new DataSourceManager();
	/* javax.sql.DataSource Interface 는
	 * 다양한 DBCP 구현체를 표준화하는 인터페이스
	 * DataSource Interface 타입으로 각 DAO에서
	 * 사용하면 DBCP 구현체가 변경되어도 코드 수정이 별도로 필요없다.
	 * --> 다형성 지원, application(DAO)와 DBCP의 결합도를 낮추어
	 * 		유지보수성 향상이 목적
	 */
	private DataSource dataSource;
	private DataSourceManager() {
		BasicDataSource dbcp=new BasicDataSource();
		dbcp.setDriverClassName("oracle.jdbc.OracleDriver");
		dbcp.setUrl("jdbc:oracle:thin:@127.0.0.1:1521:xe");
		dbcp.setUsername("scott");
		dbcp.setPassword("tiger");
		dbcp.setMaxTotal(20); // 동시에 사용될 수 있는 컨넥션 수를 설정 (default 로 8명까지 설정이 되어있다.)
		dataSource=dbcp;
	}
	public static DataSourceManager getInstance() {
		return instance;
	}
	public DataSource getDataSource() {
		return dataSource;
	}
}
