package com.ch11;
import java.sql.*;

public class teacher extends db{
	private String strSql;
    
    public teacher()throws InstantiationException, IllegalAccessException
    {        
   		strSql="";   
    }

	public ResultSet getBasicInformation(String T_ID) {
		
		strSql="select distinct Teachers.T_ID,Teachers.T_Name,Teachers.Title,Teachers.T_Gender,Teachers.Depa_ID,Departments.Depa_Name,Teachers_Courses.C_ID,Courses.C_Name \r\n" + 
				"from Teachers,Teachers_Courses,Courses,Classes,Departments \r\n" + 
				"where Teachers.T_ID=Teachers_Courses.T_ID and Teachers_Courses.C_ID=Courses.C_ID and Teachers.Depa_ID=Departments.Depa_ID  and Teachers.T_ID ='"+T_ID+"'";
        strSql=strSql +" order by Teachers_Courses.C_ID;"; 
        System.out.print(strSql);
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
	
	public ResultSet getbanjixinxi(String T_ID) {
		
		strSql="select Classes.Cla_ID,Classes.Cla_Name from Teachers,Classes where Teachers.T_ID=Classes.T_ID and Teachers.T_ID='"+T_ID+"'";
        System.out.print(strSql);
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
	
	public ResultSet getgrade(String T_ID) {
		
		strSql="select Students_Courses.C_ID,T_Name,Students.S_ID,Students.S_Name,Depa_Name,Cla_Name,C_Name,Attendance_Should,Attendance_Already,SC_Score\r\n" + 
				"from Students_Courses,Students,Departments,Specialties,Classes,Courses,Teachers,Teachers_Courses\r\n" + 
				"where \r\n" + 
				"Students.S_ID = Students_Courses.S_ID and\r\n" + 
				"Courses.C_ID = Students_Courses.C_ID and\r\n" + 
				"Courses.C_ID = Teachers_Courses.C_ID and\r\n" + 
				"Teachers.T_ID = Teachers_Courses.T_ID and\r\n" + 
				"Courses.Spe_ID=Specialties.Spe_ID and\r\n" + 
				"Departments.Depa_ID=Specialties.Depa_ID and \r\n" + 
				"Specialties.Spe_ID=Classes.Spe_ID "+
				"and Teachers.T_ID = '"+T_ID+"'"; 
        strSql=strSql +" order by Courses.C_ID ASC,Students_Courses.SC_Score DESC;"; 
        System.out.print(strSql);
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
	
	public ResultSet getbanzhuren(int Cla_ID) {
		
		strSql="select Students_Courses.C_ID,T_Name,Students.S_ID,Students.S_Name,Depa_Name,Cla_Name,C_Name,Attendance_Should,Attendance_Already,SC_Score\r\n" + 
				"from Students_Courses,Students,Departments,Specialties,Classes,Courses,Teachers,Teachers_Courses\r\n" + 
				"where \r\n" + 
				"Students.S_ID = Students_Courses.S_ID and\r\n" + 
				"Courses.C_ID = Students_Courses.C_ID and\r\n" + 
				"Courses.C_ID = Teachers_Courses.C_ID and\r\n" + 
				"Teachers.T_ID = Teachers_Courses.T_ID and\r\n" + 
				"Courses.Spe_ID=Specialties.Spe_ID and\r\n" + 
				"Departments.Depa_ID=Specialties.Depa_ID and \r\n" + 
				"Specialties.Spe_ID=Classes.Spe_ID "+
				"and Classes.Cla_ID = "+Cla_ID+""; 
        strSql=strSql +" order by Courses.C_ID ASC,Students_Courses.SC_Score DESC;"; 
        System.out.print(strSql);
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
	
	public ResultSet getquanxiao() {
		
		strSql="select Students_Courses.C_ID,T_Name,Students.S_ID,Students.S_Name,Depa_Name,Cla_Name,C_Name,Attendance_Should,Attendance_Already,SC_Score\r\n" + 
				"from Students_Courses,Students,Departments,Specialties,Classes,Courses,Teachers,Teachers_Courses\r\n" + 
				"where \r\n" + 
				"Students.S_ID = Students_Courses.S_ID and\r\n" + 
				"Courses.C_ID = Students_Courses.C_ID and\r\n" + 
				"Courses.C_ID = Teachers_Courses.C_ID and\r\n" + 
				"Teachers.T_ID = Teachers_Courses.T_ID and\r\n" + 
				"Courses.Spe_ID=Specialties.Spe_ID and\r\n" + 
				"Departments.Depa_ID=Specialties.Depa_ID and \r\n" + 
				"Specialties.Spe_ID=Classes.Spe_ID "; 
        strSql=strSql +" order by Courses.C_ID ASC,Students_Courses.SC_Score DESC;"; 
        System.out.print(strSql);
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
	
	public ResultSet getxuehao(String S_ID) {
		
		strSql="select Students_Courses.C_ID,T_Name,Students.S_ID,Students.S_Name,Depa_Name,Cla_Name,C_Name,Attendance_Should,Attendance_Already,SC_Score\r\n" + 
				"from Students_Courses,Students,Departments,Specialties,Classes,Courses,Teachers,Teachers_Courses\r\n" + 
				"where \r\n" + 
				"Students.S_ID = Students_Courses.S_ID and\r\n" + 
				"Courses.C_ID = Students_Courses.C_ID and\r\n" + 
				"Courses.C_ID = Teachers_Courses.C_ID and\r\n" + 
				"Teachers.T_ID = Teachers_Courses.T_ID and\r\n" + 
				"Courses.Spe_ID=Specialties.Spe_ID and\r\n" + 
				"Departments.Depa_ID=Specialties.Depa_ID and \r\n" + 
				"Specialties.Spe_ID=Classes.Spe_ID and Students.S_ID like'%"+S_ID+"%'"; 
        strSql=strSql +" order by Courses.C_ID ASC,Students_Courses.SC_Score DESC;"; 
        System.out.print(strSql);
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
	
	public ResultSet getclassinformation(String Cla_ID) {
		
		strSql="select Students_Courses.C_ID,T_Name,Students.S_ID,Students.S_Name,Depa_Name,Cla_Name,C_Name,Attendance_Should,Attendance_Already,SC_Score\r\n" + 
				"from Students_Courses,Students,Departments,Specialties,Classes,Courses,Teachers,Teachers_Courses\r\n" + 
				"where \r\n" + 
				"Students.S_ID = Students_Courses.S_ID and\r\n" + 
				"Courses.C_ID = Students_Courses.C_ID and\r\n" + 
				"Courses.C_ID = Teachers_Courses.C_ID and\r\n" + 
				"Teachers.T_ID = Teachers_Courses.T_ID and\r\n" + 
				"Courses.Spe_ID=Specialties.Spe_ID and\r\n" + 
				"Departments.Depa_ID=Specialties.Depa_ID and \r\n" + 
				"Specialties.Spe_ID=Classes.Spe_ID "+
				"and Classes.Cla_ID = ";
        strSql=strSql +Cla_ID; 
        strSql=strSql +" order by Courses.C_ID ASC,Students_Courses.SC_Score DESC;"; 
        System.out.print(strSql);
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
	
	public ResultSet getcoursegrade(String T_ID,String C_Name) {
		
		strSql="select Students_Courses.C_ID,T_Name,Students.S_ID,Students.S_Name,Depa_Name,Cla_Name,C_Name,Attendance_Should,Attendance_Already,SC_Score\r\n" + 
				"from Students_Courses,Students,Departments,Specialties,Classes,Courses,Teachers,Teachers_Courses\r\n" + 
				"where \r\n" + 
				"Students.S_ID = Students_Courses.S_ID and\r\n" + 
				"Courses.C_ID = Students_Courses.C_ID and\r\n" + 
				"Courses.C_ID = Teachers_Courses.C_ID and\r\n" + 
				"Teachers.T_ID = Teachers_Courses.T_ID and\r\n" + 
				"Courses.Spe_ID=Specialties.Spe_ID and\r\n" + 
				"Departments.Depa_ID=Specialties.Depa_ID and \r\n" + 
				"Specialties.Spe_ID=Classes.Spe_ID "+
				"and Teachers.T_ID = '"+T_ID+"'";
        strSql=strSql +" and Courses.C_Name='"+C_Name+"'"; 
        strSql=strSql +" order by Courses.C_ID ASC,Students_Courses.SC_Score DESC;"; 
        System.out.print(strSql);
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
	
	public ResultSet getAskForLeaveInformation(String T_ID) {
		strSql="select AskForLeaveRecords.A_ID,Students.S_ID,Students.S_Name,\r\n" + 
				"AskForLeaveRecords.BeginDate,AskForLeaveRecords.EndDate,\r\n" + 
				"AskForLeaveRecords.Leave_Type,AskForLeaveRecords.Reason\r\n,AskForLeaveRecords.[Authorization] " + 
				"from Students,AskForLeaveRecords\r\n" + 
				"where Students.S_ID=AskForLeaveRecords.S_ID and T_ID='"+T_ID+"'";
        System.out.print(strSql);
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
	
	public Boolean updategrade(String S_ID,String C_ID,String SC_Score) {
		
		strSql="update Students_Courses set SC_Score='"+SC_Score+"' where S_ID='"+S_ID+"' and C_ID='"+C_ID+"'";
		System.out.println(strSql);
		boolean isupdategrade = super.exeSql(strSql);
		return isupdategrade;
	}
	
	public Boolean updatechuqin(String S_ID,String C_ID,String Attendance_Should,String Attendance_Already) {
		
		strSql="update Students_Courses set Attendance_Should='"+Attendance_Should+"',"+"Attendance_Already='"+Attendance_Already+"' where S_ID='"+S_ID+"' and C_ID='"+C_ID+"'";
		System.out.println(strSql);
		boolean isupdategrade = super.exeSql(strSql);
		return isupdategrade;
	}
	
	public Boolean updateauthorizationY(String A_ID) {
		
		strSql="update AskForLeaveRecords set [Authorization]='批准'\r\n" + 
				"where A_ID="+A_ID;
		System.out.println(strSql);
		boolean isupdategrade = super.exeSql(strSql);
		return isupdategrade;
	}
	
	public Boolean updateauthorizationN(String A_ID) {
		
		strSql="update AskForLeaveRecords set [Authorization]='批准未通过'\r\n" + 
				"where A_ID="+A_ID;
		System.out.println(strSql);
		boolean isupdategrade = super.exeSql(strSql);
		return isupdategrade;
	}
	
	public ResultSet getStudentBasicInformation(String S_ID) {
		
		strSql="select departments.Depa_ID,specialties.Spe_ID,"
				+ "students.S_ID,S_Name,enrollment,"
				+ "s_gender,address,phone,cla_name,"
				+ "s_grade,depa_name,spe_name,t_name,"
				+ "t_gender,eyesight,height,weight,"
				+ "hi_grade,special "
				+ "from "
				+ "students,healthinformation,"
				+ "classes,teachers,departments,specialties "
				+ "where "
				+ "students.cla_id = classes.cla_id and "
				+ "classes.spe_id = specialties.spe_id and "
				+ "specialties.depa_id = departments.depa_id and "
				+ "classes.t_id = teachers.t_id and "
				+ "healthinformation.s_id = students.s_id and "
				+ "healthinformation.hi_grade = students.s_grade and "
				+ "students.s_id = '"+S_ID+"'";       
        System.out.print(strSql);
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
}
