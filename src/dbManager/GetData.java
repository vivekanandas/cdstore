package dbManager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;



public class GetData {
	
	
	static Connection con = null;
	Statement stmt = null;
	static ResultSet rs =null;
	private static ReadWriteLock rwlock = new ReentrantReadWriteLock();
	
		public  synchronized  ResultSet getData(String com)
	{
		try{ 
		con = ConnectionManager.getConnection();
		Statement stmt = con.createStatement();
		rs = stmt.executeQuery(com);
		}catch(SQLException ex){System.out.println(ex.toString());}
		return rs;
		 
	}
	
	
	public  synchronized  boolean getExecuteQuery(String com)
	{
		try{ 
		con = ConnectionManager.getConnection();
		Statement stmt = con.createStatement();
		
		rwlock.readLock().lock();
		
		stmt.executeUpdate(com);
		
		rwlock.readLock().unlock();
		 
		}catch(SQLException ex){
			System.out.println(ex.toString());
			return false;
			}
		return true;
	}
	

}
