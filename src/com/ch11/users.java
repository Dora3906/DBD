package com.ch11;
import java.sql.*;

public class users extends db
{
	//定义成员变量
    private String UserName;
    private String UserPassword;     
    private int Type;
    //执行各种操作的sql语句
    private String strSql;
   
    //构造函数，初始化成员变量
    /**
   	*@throws IllegalAccessException 
        * @throws InstantiationException 
        * @初始化操作,包括给变量赋初值和连接数据库
   	*/
    public users()throws InstantiationException, IllegalAccessException
    {       
        UserName="";
        UserPassword="";  
        Type=0;
   		strSql="";   
   }   

   
   
   
   public boolean update_Pwd()
   {
        
        strSql="update Users set ";
        strSql=strSql + "UserPassword="; 
        strSql=strSql + "'" + UserPassword + "'";
		strSql=strSql + " where UserName = "; 
		strSql=strSql + "'" + UserName + "'";
		System.out.println(strSql);
		boolean isUpdata = super.exeSql(strSql);
		return isUpdata;
   }
   
   
   
   /**
    *@判断用户名是否存在 by UserName
    */
   public boolean is_exist()
   {
    	strSql="select * from Users where UserName = '"+UserName+"'";
        ResultSet rs = null;
        boolean isExist = false;              
        try
		{
   		 	rs = super.exeSqlQuery(strSql);
   		 	while(rs.next())
			{
				isExist = true;	
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString()); 			
		}
		return isExist;
   }   
    /**
    *@判断用户名和密码是否正确
    */
   public boolean user_valid()
   {
    	strSql="select * from Users where";
    	strSql=strSql + " UserName = '"+UserName+"'";
    	strSql=strSql + " and Password = '"+UserPassword+"'";
        ResultSet rs = null;
        boolean isValid = false;              
        try
		{
   		 	rs = super.exeSqlQuery(strSql);
   		 	while(rs.next())
			{			
				isValid = true;	
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString()); 			
		}
		return isValid;
   }
   
   public boolean user_valid(String UserName,String PassWord)
   {
	   this.userName = UserName;
	   this.userPassword = PassWord;
    	strSql="select * from Users where";
    	strSql=strSql + " UserName = '"+UserName+"'";
    	strSql=strSql + " and Password = '"+UserPassword+"'";
        ResultSet rs = null;
        boolean isValid = false;              
        try
		{
   		 	rs = super.exeSqlQuery(strSql);
   		 	while(rs.next())
			{			
				isValid = true;	
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString()); 			
		}
		return isValid;
   }
   
 
    /**
    *@设置成员变量UserName的值
    */
   public void setUserName(String UserName)
   {
   		this.UserName = UserName;	
   }   
   /**
    *@获取成员变量UserName的值
    */
   public String getUserName()
   {
   		return this.UserName;	
   }   
    /**
    *@设置成员变量UserPassword的值
    */
   public void setUserPassword(String UserPassword)
   {
   		this.UserPassword = UserPassword;	
   }   
   /**
    *@获取成员变量UserPassword的值
    */
   public String getUserPassword()
   {
   		return this.UserPassword;	
   }
	public int getType(String Username) {
		strSql="select User_Type from Users where Username =";
        strSql=strSql +Username;        
        try
		{
   			ResultSet rs = super.exeSqlQuery(strSql);
            if (rs.next())
            {
                this.Type=rs.getInt("User_Type");
            }
            else
            {
               System.out.print("没有查到所需要的信息");
            }
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString());            
		}
		return Type;
	}
	public void setType(Integer type) {
		Type = type;
	}
   
   
}
