package com.ch11;
import java.sql.*;

import jdk.nashorn.internal.objects.annotations.Where;


public class student extends db
{
	//定义成员变量
    private String S_ID;
    private String S_Name;
    private String Password;
    private String Enrollment;
    private String S_Gender;
    private String T_Gender;
    private String Address;
    private String Phone;
    private int Cla_ID;
    private String Cla_Name;
    private int S_Grade;
    private String Depa_Name;
    private String Spe_Name;
    private int Spe_ID;
    private String ClsaaTeacher_Name;
    private int Depa_ID;
    private float Eyesight;
    private int Height;
    private float Weight;
    private float HI_Score;
    private String Special;
    private float BMI;
    
    
    private String C_ID;
    private String C_Name;
    private String C_Depa_Name;
    private String C_Teacher_Name;
    private float C_Score;
    private String C_Type;
    private int Attendance_Already;
    private int Attendance_Should;
    
    
    
    
    private int A_ID;
    private String BeginDate;
    private String EndDate;
    private String Leave_Type;
    private String Reason;
    private String Authorization;
    
    
    
    private String B_ID;
    private String B_Name;
    private String Author;
    private String B_Type;
    private int Amount;
    private String BorrowDate;
    private String ReturnDate;
    
    //执行各种操作的sql语句
    private String strSql;
   
    //构造函数，初始化成员变量
    /**
   	*@throws IllegalAccessException 
        * @throws InstantiationException 
        * @初始化操作,包括给变量赋初值和连接数据库
   	*/
    public student()throws InstantiationException, IllegalAccessException
    {       
        
   		strSql="";   
   }

	public String getS_ID() {
		return S_ID;
	}

	public void setS_ID(String s_ID) {
		S_ID = s_ID;
	}
	
	public String getCla_Name() {
		return Cla_Name;
	}

	public void setCla_Name(String cla_Name) {
		Cla_Name = cla_Name;
	}

	
	public String getB_ID() {
		return B_ID;
	}

	public void setB_ID(String b_ID) {
		B_ID = b_ID;
	}

	public String getB_Name() {
		return B_Name;
	}

	public void setB_Name(String b_Name) {
		B_Name = b_Name;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String author) {
		Author = author;
	}

	public String getB_Type() {
		return B_Type;
	}

	public void setB_Type(String b_Type) {
		B_Type = b_Type;
	}

	public int getAmount() {
		return Amount;
	}

	public void setAmount(int amount) {
		Amount = amount;
	}

	public String getBorrowDate() {
		return BorrowDate;
	}

	public void setBorrowDate(String borrowDate) {
		BorrowDate = borrowDate;
	}

	public String getReturnDate() {
		return ReturnDate;
	}

	public void setReturnDate(String returnDate) {
		ReturnDate = returnDate;
	}

	public String getT_Gender() {
		return T_Gender;
	}

	public void setT_Gender(String t_Gender) {
		T_Gender = t_Gender;
	}

	public String getS_Name() {
		return S_Name;
	}

	public String getS_Name(String S_ID) {
		
		strSql="select S_Name from Students where S_ID =";
        strSql=strSql +S_ID;        
        try
		{
   			ResultSet rs = super.exeSqlQuery(strSql);
            if (rs.next())
            {
                this.S_Name=rs.getString("S_Name");
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
		
		return S_Name;
	}

	public void setS_Name(String s_Name) {
		S_Name = s_Name;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getEnrollment() {
		return Enrollment;
	}

	public void setEnrollment(String enrollment) {
		Enrollment = enrollment;
	}

	public String getS_Gender() {
		return S_Gender;
	}

	public void setS_Gender(String s_Gender) {
		S_Gender = s_Gender;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public int getCla_ID() {
		return Cla_ID;
	}

	public void setCla_ID(int cla_ID) {
		Cla_ID = cla_ID;
	}

	
	public int getSpe_ID() {
		return Spe_ID;
	}

	public void setSpe_ID(int spe_ID) {
		Spe_ID = spe_ID;
	}

	public int getS_Grade() {
		return S_Grade;
	}

	public void setS_Grade(int s_Grade) {
		S_Grade = s_Grade;
	}

	public String getDepa_Name() {
		return Depa_Name;
	}

	public void setDepa_Name(String depa_Name) {
		Depa_Name = depa_Name;
	}

	public String getSpe_Name() {
		return Spe_Name;
	}

	public void setSpe_Name(String spe_Name) {
		Spe_Name = spe_Name;
	}

	public String getClsaaTeacher_Name() {
		return ClsaaTeacher_Name;
	}

	public void setClsaaTeacher_Name(String clsaaTeacher_Name) {
		ClsaaTeacher_Name = clsaaTeacher_Name;
	}

	public int getDepa_ID() {
		return Depa_ID;
	}

	public void setDepa_ID(int depa_ID) {
		Depa_ID = depa_ID;
	}

	public float getEyesight() {
		return Eyesight;
	}

	public void setEyesight(float eyesight) {
		Eyesight = eyesight;
	}

	public int getHeight() {
		return Height;
	}

	public void setHeight(int height) {
		Height = height;
	}

	public float getWeight() {
		return Weight;
	}

	public void setWeight(float weight) {
		Weight = weight;
	}

	public float getHI_Score() {
		return HI_Score;
	}

	public void setHI_Score(float hI_Score) {
		HI_Score = hI_Score;
	}

	public String getSpecial() {
		return Special;
	}

	public void setSpecial(String special) {
		Special = special;
	}

	public float getBMI() {
		return BMI;
	}

	public void setBMI(float bMI) {
		BMI = bMI;
	}

	public String getStrSql() {
		return strSql;
	}

	public void setStrSql(String strSql) {
		this.strSql = strSql;
	}   

	
	public void getBasicInformation(String S_ID) {
		
		strSql="select students.S_ID,S_Name,enrollment,s_gender,address,phone,cla_name,s_grade,depa_name,spe_name,t_name,t_gender,eyesight,height,weight,hi_grade,special from students,healthinformation,classes,teachers,departments,specialties where students.cla_id = classes.cla_id and classes.spe_id = specialties.spe_id and specialties.depa_id = departments.depa_id and classes.t_id = teachers.t_id and healthinformation.s_id = students.s_id and healthinformation.hi_grade = students.s_grade and students.s_id = ";
        strSql=strSql +S_ID;        
        try
		{
   			ResultSet rs = super.exeSqlQuery(strSql);
            if (rs.next())
            {
            	this.S_ID=rs.getString("S_ID");
                this.S_Name=rs.getString("S_Name");
                this.Enrollment=rs.getString("Enrollment");
                this.S_Gender=rs.getString("S_Gender");
                this.Address=rs.getString("Address");
                this.Phone=rs.getString("Phone");
                this.S_Grade=rs.getInt("S_Grade");
                this.ClsaaTeacher_Name=rs.getString("T_Name");
                this.Cla_Name=rs.getString("Cla_Name");
                this.Depa_Name=rs.getString("Depa_Name");
                this.Spe_Name=rs.getString("Spe_Name");
                System.out.print("++++++++++"+S_ID+S_Name+Depa_Name+Spe_Name);
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
	}
	
	public String getAddress(String S_ID) {
		
		strSql="select students.S_ID,S_Name,enrollment,s_gender,address,phone,cla_name,s_grade,depa_name,spe_name,t_name,t_gender,eyesight,height,weight,hi_grade,special from students,healthinformation,classes,teachers,departments,specialties where students.cla_id = classes.cla_id and classes.spe_id = specialties.spe_id and specialties.depa_id = departments.depa_id and classes.t_id = teachers.t_id and healthinformation.s_id = students.s_id and healthinformation.hi_grade = students.s_grade and students.s_id =  ";
        strSql=strSql +S_ID;        
        try
		{
   			ResultSet rs = super.exeSqlQuery(strSql);
            if (rs.next())
            {
            	this.S_ID=rs.getString("S_ID");
                this.S_Name=rs.getString("S_Name");
                this.Enrollment=rs.getString("Enrollment");
                this.S_Gender=rs.getString("S_Gender");
                this.Address=rs.getString("Address");
                this.Phone=rs.getString("Phone");
                this.S_Grade=rs.getInt("S_Grade");
                this.ClsaaTeacher_Name=rs.getString("T_Name");
                this.T_Gender=rs.getString("t_gender");
                this.Cla_Name=rs.getString("Cla_Name");
                this.Spe_Name=rs.getString("spe_name");
                this.Depa_Name=rs.getString("depa_name");
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
        return this.Address;
	}
	
	
	public float getEyesight(String S_ID) {
		
		strSql="SELECT * from HealthInformation,Students where HealthInformation.S_ID=Students.S_ID and HealthInformation.S_ID =  ";
        strSql=strSql +S_ID;        
        try
		{
   			ResultSet rs = super.exeSqlQuery(strSql);
            if (rs.next())
            {
            	this.Eyesight=rs.getFloat("Eyesight");
                this.Height=rs.getInt("Height");
                this.Weight=rs.getFloat("Weight");
                this.HI_Score=rs.getFloat("HI_Score");
                this.Special=rs.getString("Special");
                this.BMI=(Weight/2)/(((float)Height/100)*((float)Height/100));
                this.BMI=((float)Math.round(BMI*10))/10;
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
        return this.Eyesight;
	}

	public String getC_ID() {
		return C_ID;
	}

	public void setC_ID(String c_ID) {
		C_ID = c_ID;
	}

	public String getC_Name() {
		return C_Name;
	}

	public void setC_Name(String c_Name) {
		C_Name = c_Name;
	}

	public String getC_Depa_Name() {
		return C_Depa_Name;
	}

	public void setC_Depa_Name(String c_Depa_Name) {
		C_Depa_Name = c_Depa_Name;
	}

	public String getC_Teacher_Name() {
		return C_Teacher_Name;
	}

	public void setC_Teacher_Name(String c_Teacher_Name) {
		C_Teacher_Name = c_Teacher_Name;
	}

	public float getC_Score() {
		return C_Score;
	}

	public void setC_Score(float c_Score) {
		C_Score = c_Score;
	}

	public String getC_Type() {
		return C_Type;
	}

	public void setC_Type(String c_Type) {
		C_Type = c_Type;
	}

	public int getAttendance_Already() {
		return Attendance_Already;
	}

	public void setAttendance_Already(int attendance_Already) {
		Attendance_Already = attendance_Already;
	}

	public int getAttendance_Should() {
		return Attendance_Should;
	}

	public void setAttendance_Should(int attendance_Should) {
		Attendance_Should = attendance_Should;
	}
	
	
	
	public ResultSet getGradeInformation(String S_ID) {
		
		strSql="select distinct Students_Courses.C_ID,C_Name, Depa_Name,T_Name,SC_Score,SC_Type,Attendance_Already,Attendance_Should  from Courses,Students_Courses,Students,Classes,Teachers,Departments,Teachers_Courses where Students.S_ID=Students_Courses.S_ID and Students_Courses.C_ID = Courses.C_ID and Courses.C_ID = Teachers_Courses.C_ID and Teachers_Courses.T_ID = Teachers.T_ID and Teachers.Depa_ID = Departments.Depa_ID and Students_Courses.S_ID=  ";
        strSql=strSql +S_ID;   
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

	public int getA_ID() {
		return A_ID;
	}

	public void setA_ID(int a_ID) {
		A_ID = a_ID;
	}

	public String getBeginDate() {
		return BeginDate;
	}

	public void setBeginDate(String beginDate) {
		BeginDate = beginDate;
	}

	public String getEndDate() {
		return EndDate;
	}

	public void setEndDate(String endDate) {
		EndDate = endDate;
	}

	public String getLeave_Type() {
		return Leave_Type;
	}

	public void setLeave_Type(String leave_Type) {
		Leave_Type = leave_Type;
	}

	public String getReason() {
		return Reason;
	}

	public void setReason(String reason) {
		Reason = reason;
	}

	public String getAuthorization() {
		return Authorization;
	}

	public void setAuthorization(String authorization) {
		Authorization = authorization;
	}
	
	
	
	public ResultSet getAskForLeaveInformation(String S_ID) {
		
		strSql="select A_ID,BeginDate,EndDate,Leave_Type,Reason,[Authorization]  from Students,AskForLeaveRecords where Students.S_ID = AskForLeaveRecords.S_ID and Students.S_ID =   ";
        strSql=strSql +S_ID;   
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
	
	public boolean AddLeaveRecord(String S_ID,String BeginDate,String EndDate,String Leave_Type,String Reason){
		strSql="insert into AskForLeaveRecords (S_ID,BeginDate,EndDate,Leave_Type,Reason,T_ID) values( ";
		strSql=strSql+"'"+S_ID+"',";
		strSql=strSql+"'"+BeginDate+"',";
		strSql=strSql+"'"+EndDate+"',";
		strSql=strSql+"'"+Leave_Type+"',";
		strSql=strSql+"'"+Reason+"',";
		strSql=strSql+"(select T_ID from Students,Classes where Students.Cla_ID=Classes.Cla_ID and S_ID='"+S_ID+"'))";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	
	public ResultSet getBorrowBooksInformation(String S_ID) {
		
		strSql="select Students_Books.B_ID,B_Name,Author,B_Type,Amount,Students_Books.S_ID,BorrowDate,ReturnDate from Students,Students_Books,Books where Students.S_ID=Students_Books.S_ID and Students_Books.B_ID=Books.B_ID and Students_Books.S_ID= ";
        strSql=strSql +S_ID;   
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
	
	public boolean changepwd(String S_ID,String pwd) {
		
		strSql="update Users set [Password]='"+pwd+"' where Username='"+ S_ID+"' "; 
		System.out.println(strSql);
		boolean isupDate = super.exeSql(strSql);
		return isupDate;
	}
	
	public ResultSet getAllBooksInformation(String S_ID) {
		
		strSql="select * from Books  ";
          
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
	
	public boolean BorrowBook(String S_ID,String B_ID){
		strSql="insert into Students_Books (S_ID,B_ID) values( ";
		strSql=strSql+"'"+S_ID+"',";
		strSql=strSql+"'"+B_ID+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public boolean Correct(String B_ID,int Amount){
		strSql="update Books set Amount = "  +(Amount-1) +" Where B_ID = ";
		strSql=strSql+"'"+B_ID+"'"; 
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public boolean DeleteBook(String S_ID,String B_ID){
		strSql="delete from Students_Books where S_ID="+S_ID+"and B_ID="+B_ID;
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public boolean CorrectDelete(String B_ID,int Amount){
		strSql="update Books set Amount = "  +(Amount+1) +" Where B_ID = ";
		strSql=strSql+"'"+B_ID+"'"; 
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public ResultSet getS_CourseInformation(String S_ID) {
		
		strSql="select distinct Students_Courses.C_ID,Courses.C_Name,Depa_Name,Specialties.Spe_ID,Spe_Name,Teachers.T_Name from Courses,Students,Students_Courses,Teachers,Teachers_Courses,Specialties,Departments where  Teachers_Courses.C_ID = Courses.C_ID and Teachers.T_ID = Teachers_Courses.T_ID and Courses.C_ID = Students_Courses.C_ID and Students.S_ID = Students_Courses.S_ID and Courses.Spe_ID = Specialties.Spe_ID and Specialties.Depa_ID = Departments.Depa_ID and Students_Courses.S_ID = ";
        strSql=strSql + "'"+S_ID+"'";   
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
	
	public boolean update(String a,String b){
		strSql="update Dormitories set Level="+"'"+b+"'"+" where Dorm_ID="+"'"+a+"'";
		System.out.println(a);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}


public ResultSet getAll_CourseInformation() {
		
		strSql="select distinct Courses.C_ID,Courses.C_Name,\r\n" + 
				"Depa_Name,Specialties.Spe_ID,Spe_Name,\r\n" + 
				"Teachers.T_Name \r\n" + 
				"from \r\n" + 
				"Courses,Students,\r\n" + 
				"Students_Courses,Teachers,Teachers_Courses,\r\n" + 
				"Specialties,Departments,Classes \r\n" + 
				"where \r\n" + 
				"Teachers_Courses.T_ID = Teachers.T_ID and \r\n" + 
				"Teachers_Courses.C_ID = Courses.C_ID and\r\n" + 
				"Courses.Spe_ID = Specialties.Spe_ID and \r\n" + 
				"Teachers.Depa_ID = Departments.Depa_ID ";
        
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
	
	public boolean AddCourse(String S_ID,String C_ID){
		strSql="insert into Students_Courses (S_ID,C_ID,SC_Type) values( ";
		strSql=strSql+"'"+S_ID+"',";
		strSql=strSql+"'"+C_ID+"',";
		strSql=strSql+"'"+"选修"+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
public ResultSet getAllBasicInformation() {
		
		strSql="select students.S_ID,S_Name,enrollment,s_gender,address,phone,Classes.cla_ID,cla_name,s_grade,Departments.depa_ID,depa_name,Specialties.Spe_ID,spe_name ,T_Name from students,classes,teachers,departments,specialties where students.cla_id = classes.cla_id and classes.spe_id = specialties.spe_id and specialties.depa_id = departments.depa_id and classes.t_id = teachers.t_id   ";      
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
	
	public ResultSet getAllHealthInformation() {
		
		strSql="select students.S_ID,S_Name,S_Grade,Eyesight,Height,Weight,HI_Score,Special from students,healthinformation where  healthinformation.s_id = students.s_id and healthinformation.hi_grade = students.s_grade  ";      
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

	
	public boolean AddBasicInformation(String S_ID,String S_Name,int S_Grade, java.sql.Date Enrollment_date,String S_Gender,String Address,String Phone,int Cla_ID) {
		strSql="INSERT INTO [dbo].[Students] VALUES ( ";
		strSql=strSql+"N'"+S_ID+"',";
		strSql=strSql+"N'"+S_Name+"',";
		strSql=strSql+"N'"+S_Gender+"',";
		strSql=strSql+"N'"+S_Grade+"',";
		strSql=strSql+"N'"+Enrollment_date+"',";
		strSql=strSql+"N'"+Address+"',";
		strSql=strSql+"N'"+Phone+"',";
		strSql=strSql+"N'"+Cla_ID+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	
	public boolean AddHealthInformation(String S_ID,int HI_Grade,float Eyesight, int Height,float Weight,float HI_Score,String Special) {
		strSql="insert into HealthInformation values( ";
		strSql=strSql+"'"+S_ID+"',";
		strSql=strSql+"'"+HI_Grade+"',";
		strSql=strSql+"'"+Eyesight+"',";
		strSql=strSql+"'"+Height+"',";
		strSql=strSql+"'"+Weight+"',";
		strSql=strSql+"'"+HI_Score+"',";
		strSql=strSql+"'"+Special+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	
	public ResultSet getAllTeacherInformation() {
		
		strSql="select * from Teachers,Departments where Teachers.Depa_ID=Departments.Depa_ID  ";      
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
	
	
	public boolean AddTeacherInformation(String T_ID,String T_Name,String Title,String T_Gender,int Depa_ID) {
		strSql="insert into Teachers values( ";
		strSql=strSql+"'"+T_ID+"',";
		strSql=strSql+"'"+T_Name+"',";
		strSql=strSql+"'"+Title+"',";
		strSql=strSql+"'"+T_Gender+"',";
		strSql=strSql+"'"+Depa_ID+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public ResultSet getAllCourseInformation() {
		
		strSql="select * from Courses,Teachers_Courses,Teachers,Specialties,Departments where Courses.C_ID = Teachers_Courses.C_ID and Teachers.T_ID = Teachers_Courses.T_ID and Courses.Spe_ID = Specialties.Spe_ID and Specialties.Depa_ID = Departments.Depa_ID  ";      
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	
	public boolean AddCourseInformation(String C_Name,int Spe_ID) {
		strSql="insert into Courses values( ";
		strSql=strSql+"'"+C_Name+"',";
		strSql=strSql+"'"+Spe_ID+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public boolean AddCourse_TeacherInformation(int C_ID,String T_ID) {
		strSql="insert into Teachers_Courses values( ";
		strSql=strSql+"'"+T_ID+"',";
		strSql=strSql+"'"+C_ID+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public ResultSet getCourseID(String C_Name) {
		
		strSql="select * from Courses where C_Name =  ";      
		strSql = strSql + "'" + C_Name + "'";
		ResultSet rs = null;
		System.out.println(strSql); 
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

	
	public ResultSet getAllDepartmentInformation() {
		
		strSql="select * from Departments,Specialties,Classes where Departments.Depa_ID = Specialties.Depa_ID and Classes.Spe_ID = Specialties.Spe_ID  ";      
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public boolean AddDepartmentInformation(int Depa_ID,String Depa_Name) {
		strSql="insert into Departments values( ";
		strSql=strSql+"'"+Depa_ID+"',";
		strSql=strSql+"'"+Depa_Name+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public ResultSet getAllDormitoryInformation() {
		
		strSql="select Students_Dormitories.Dorm_ID,Students_Dormitories.S_ID,S_Name,Students_Dormitories.WaterRate,Students_Dormitories.Electricity,Level,DA_Name  from Students,Students_Dormitories,Dormitories,DormitoryAdministrators where Students.S_ID = Students_Dormitories.S_ID and Students_Dormitories.Dorm_ID = Dormitories.Dorm_ID and Dormitories.DA_ID = DormitoryAdministrators.DA_ID  ";      
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	
	public ResultSet getAllDormitoryAdminInformation() {
		
		strSql="select * from DormitoryAdministrators ";      
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public boolean AddDormitoryAdmin(String DA_ID,String DA_Name,String DA_Gender){
		strSql="insert into DormitoryAdministrators values( ";
		strSql=strSql+"'"+DA_ID+"',";
		strSql=strSql+"'"+DA_Name+"',";
		strSql=strSql+"'"+DA_Gender+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public ResultSet getAllBookInformation() {
		
		strSql="select * from Books ";      
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public boolean AddBook(String B_ID,String B_Name,String Author,String B_Type,int Amount){
		strSql="insert into Books values( ";
		strSql=strSql+"'"+B_ID+"',";
		strSql=strSql+"'"+B_Name+"',";
		strSql=strSql+"'"+Author+"',";
		strSql=strSql+"'"+B_Type+"',";
		strSql=strSql+"'"+Amount+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	
	public ResultSet getAllUserInformation() {
		
		strSql="select * from Users  ";      
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	
	public ResultSet getSearchUserInformation(String search) {
		
		strSql="select * from Users where UserName = ";     
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	
	public boolean AddUser(String UserName,String PassWord,int UserType){
		strSql="insert into Users values( ";
		strSql=strSql+"'"+UserName+"',";
		strSql=strSql+"'"+PassWord+"',";
		strSql=strSql+"'"+UserType+"')";
		System.out.println(strSql);
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
	}
	
	public ResultSet getSearchStudentInformation(String search) {
		
		strSql="select * from students,healthinformation,classes,teachers,departments,specialties where students.cla_id = classes.cla_id and classes.spe_id = specialties.spe_id and specialties.depa_id = departments.depa_id and classes.t_id = teachers.t_id and healthinformation.s_id = students.s_id and healthinformation.hi_grade = students.s_grade and students.s_id =  ";     
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public ResultSet getSearchTeacherInformation(String search) {
		
		strSql="select * from Teachers,Departments where Teachers.Depa_ID=Departments.Depa_ID and Teachers.T_ID =  ";    
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public ResultSet getSearchDomitoryAdminInformation(String search) {
		
		strSql="select * from DormitoryAdministrators where DormitoryAdministrators.DA_ID =   ";    
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
public ResultSet getSearchStudentInformationByID(String search) {
		
		strSql="select * from students,healthinformation,classes,teachers,departments,specialties where students.cla_id = classes.cla_id and classes.spe_id = specialties.spe_id and specialties.depa_id = departments.depa_id and classes.t_id = teachers.t_id and healthinformation.s_id = students.s_id and healthinformation.hi_grade = students.s_grade and students.s_id =  ";     
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public ResultSet getSearchStudentInformationByName(String search) {
		
		strSql="select * from students,healthinformation,classes,teachers,departments,specialties where students.cla_id = classes.cla_id and classes.spe_id = specialties.spe_id and specialties.depa_id = departments.depa_id and classes.t_id = teachers.t_id and healthinformation.s_id = students.s_id and healthinformation.hi_grade = students.s_grade and students.s_name =  ";     
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public ResultSet getSearchTeacherInformationByID(String search) {
		
		strSql="select * from Teachers,Departments where Teachers.Depa_ID=Departments.Depa_ID and Teachers.T_ID =  ";    
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public ResultSet getSearchTeacherInformationByName(String search) {
		
		strSql="select * from Teachers,Departments where Teachers.Depa_ID=Departments.Depa_ID and Teachers.T_Name =  ";    
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public ResultSet getSearchDormitoryAdminInformationByID(String search) {
		
		strSql="select * from DormitoryAdministrators where DormitoryAdministrators.DA_ID =   ";    
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	public ResultSet getSearchDormitoryAdminInformationByName(String search) {
		
		strSql="select * from DormitoryAdministrators where DormitoryAdministrators.DA_Name =   ";    
		strSql = strSql  + "'"+ search +"'";
		ResultSet rs = null;
		System.out.println(strSql); 
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
	
	//删除账户
	public boolean deleteUser(String UserName) {
		strSql="delete from Users where Username = ";
		strSql=strSql+"'"+UserName+"'";
		System.out.println(strSql);
		boolean isDelete = super.exeSql(strSql);
		return isDelete;
	}
}
