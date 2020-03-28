package com.ch11;

import java.sql.ResultSet;
import java.sql.SQLException;

public class life extends db{

	private String strSql;
	
	public life() throws InstantiationException, IllegalAccessException {
		super();
		// TODO Auto-generated constructor stub
	}

	private String Dorm_ID;
	private String S_ID;
	private String S_Name;
	private double WaterRate;
	private double Electricity;
	private String DA_Name;
	private String Level;

public ResultSet getlife(String S_ID) {
		
		strSql="select Students_Dormitories.Dorm_ID,Students_Dormitories.S_ID,Students.S_Name,Students_Dormitories.WaterRate,Students_Dormitories.Electricity,DormitoryAdministrators.DA_Name,Dormitories.Level from Students_Dormitories,Students,Dormitories,DormitoryAdministrators where Students.S_ID=Students_Dormitories.S_ID and Students_Dormitories.Dorm_ID=Dormitories.Dorm_ID and Dormitories.DA_ID=dbo.DormitoryAdministrators.DA_ID and DormitoryAdministrators.DA_ID=";
        strSql=strSql + S_ID;   
        ResultSet rs = null;
        try
		{
   			rs = super.exeSqlQuery(strSql);
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString());            
		}
        return rs;
	}

	
	public String getStrSql() {
		return strSql;
	}
	public void setStrSql(String strSql) {
		this.strSql = strSql;
	}
	public String getDorm_ID() {
		return Dorm_ID;
	}
	public void setDorm_ID(String dorm_ID) {
		Dorm_ID = dorm_ID;
	}
	public String getS_ID() {
		return S_ID;
	}
	public void setS_ID(String s_ID) {
		S_ID = s_ID;
	}
	public String getS_Name() {
		return S_Name;
	}
	public void setS_Name(String s_Name) {
		S_Name = s_Name;
	}
	public double getWaterRate() {
		return WaterRate;
	}
	public void setWaterRate(double waterRate) {
		WaterRate = waterRate;
	}
	public double getElectricity() {
		return Electricity;
	}
	public void setElectricity(double electricity) {
		Electricity = electricity;
	}
	public String getDA_Name() {
		return DA_Name;
	}
	public void setDA_Name(String dA_Name) {
		DA_Name = dA_Name;
	}
	public String getLevel() {
		return Level;
	}
	public void setLevel(String level) {
		Level = level;
	}
	
}
