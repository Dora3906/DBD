package com.ch11;
import java.sql.*;


public class db
{ 
	//数据库用户名
	String userName="sa";
	//数据库密码
	String userPassword="143239";
    //数据库的URL，包括连接数据库所使用的编码格式
	String url="jdbc:sqlserver://localhost:1433;databaseName=BasicInformation";
   	//定义一个连接对象
	Connection dbcon;   
   	//错误信息串
	Statement stmt;
	ResultSet rs;    	
    /**
	*@throws IllegalAccessException 
     * @throws InstantiationException 
     * @初始化操作,包括给变量赋初值和连接数据库
	*/
   	public db() throws InstantiationException, IllegalAccessException
   	{
   		//初始化参数值
   		stmt = null;
		rs = null;	
		//连接数据库
		try {
	        //1.加载驱动
	        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	        System.out.println("加载驱动成功！");
	    }catch(Exception e) {
	        e.printStackTrace();
	        System.out.println("加载驱动失败！");
	    }
	    try {  
	        //2.连接
	        dbcon=DriverManager.getConnection( url,userName,userPassword);
	        System.out.println("连接数据库成功！");
	    }catch(Exception e) {
	        e.printStackTrace();
	        System.out.println("连接数据库失败！");
	    }
   	}   	
   	/**
	*@对数据库执行sql执行语句，主要是插入和更新操作,返回一个布尔值变量
	*/
	public boolean exeSql(String strSql)
	{
		try
		{
   			stmt=dbcon.createStatement();
			stmt.executeUpdate(strSql);
			return true;            
		}
		catch(Exception ex)
		{
			//打印出异常信息
			System.out.println(ex.toString());
			return false;
		}			
	}	
	/**
	*@对数据库执行sql查询语句,返回一个ResultSet类型的对象
	*/
    public ResultSet exeSqlQuery(String strSql)
	{		
		try
		{
   			stmt=dbcon.createStatement();
			rs =stmt.executeQuery(strSql);			            
		}
		catch(Exception ex)
		{
			//打印出异常信息
			System.out.println(ex.toString());
			rs = null;
		}		
		return rs;
	}  
}

