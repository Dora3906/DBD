package com.ch11;
import java.sql.*;

public class users extends db
{
	//�����Ա����
    private String UserName;
    private String UserPassword;     
    private int Type;
    //ִ�и��ֲ�����sql���
    private String strSql;
   
    //���캯������ʼ����Ա����
    /**
   	*@throws IllegalAccessException 
        * @throws InstantiationException 
        * @��ʼ������,��������������ֵ���������ݿ�
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
    *@�ж��û����Ƿ���� by UserName
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
    *@�ж��û����������Ƿ���ȷ
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
    *@���ó�Ա����UserName��ֵ
    */
   public void setUserName(String UserName)
   {
   		this.UserName = UserName;	
   }   
   /**
    *@��ȡ��Ա����UserName��ֵ
    */
   public String getUserName()
   {
   		return this.UserName;	
   }   
    /**
    *@���ó�Ա����UserPassword��ֵ
    */
   public void setUserPassword(String UserPassword)
   {
   		this.UserPassword = UserPassword;	
   }   
   /**
    *@��ȡ��Ա����UserPassword��ֵ
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
               System.out.print("û�в鵽����Ҫ����Ϣ");
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
