package com.ch11;
import java.sql.*;


public class db
{ 
	//���ݿ��û���
	String userName="sa";
	//���ݿ�����
	String userPassword="143239";
    //���ݿ��URL�������������ݿ���ʹ�õı����ʽ
	String url="jdbc:sqlserver://localhost:1433;databaseName=BasicInformation";
   	//����һ�����Ӷ���
	Connection dbcon;   
   	//������Ϣ��
	Statement stmt;
	ResultSet rs;    	
    /**
	*@throws IllegalAccessException 
     * @throws InstantiationException 
     * @��ʼ������,��������������ֵ���������ݿ�
	*/
   	public db() throws InstantiationException, IllegalAccessException
   	{
   		//��ʼ������ֵ
   		stmt = null;
		rs = null;	
		//�������ݿ�
		try {
	        //1.��������
	        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	        System.out.println("���������ɹ���");
	    }catch(Exception e) {
	        e.printStackTrace();
	        System.out.println("��������ʧ�ܣ�");
	    }
	    try {  
	        //2.����
	        dbcon=DriverManager.getConnection( url,userName,userPassword);
	        System.out.println("�������ݿ�ɹ���");
	    }catch(Exception e) {
	        e.printStackTrace();
	        System.out.println("�������ݿ�ʧ�ܣ�");
	    }
   	}   	
   	/**
	*@�����ݿ�ִ��sqlִ����䣬��Ҫ�ǲ���͸��²���,����һ������ֵ����
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
			//��ӡ���쳣��Ϣ
			System.out.println(ex.toString());
			return false;
		}			
	}	
	/**
	*@�����ݿ�ִ��sql��ѯ���,����һ��ResultSet���͵Ķ���
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
			//��ӡ���쳣��Ϣ
			System.out.println(ex.toString());
			rs = null;
		}		
		return rs;
	}  
}

