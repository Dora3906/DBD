package com.ch11;

import java.sql.ResultSet;

public class housemaster extends db {
	
	 //ִ�и��ֲ�����sql���
    private String strSql;
    
	public housemaster() throws InstantiationException, IllegalAccessException {
		strSql="";
	}

	private String H_ID;
	    private String H_Name;
	    private String H_Sex;
		public String getH_ID() {
			return H_ID;
		}
		public void setH_ID(String h_ID) {
			H_ID = h_ID;
		}
		public String getH_Name() {
			return H_Name;
		}
		public void setH_Name(String h_Name) {
			H_Name = h_Name;
		}
		public String getH_Sex() {
			return H_Sex;
		}
		public void setH_Sex(String h_Sex) {
			H_Sex = h_Sex;
		}
	    
		public void getBasicInformation(String S_ID) {
			
			strSql="select * from DormitoryAdministrators where DA_ID=";
	        strSql=strSql +S_ID;        
	        try
			{
	   			ResultSet rs = super.exeSqlQuery(strSql);
	            if (rs.next())
	            {
	            	this.H_ID=rs.getString("DA_ID");
	                this.H_Name=rs.getString("DA_Name");
	                this.H_Sex=rs.getString("DA_Gender");
	                System.out.print("++++++++++"+S_ID+H_ID+H_Name+H_Sex);
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
		}
		
}
