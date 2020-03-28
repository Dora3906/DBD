package com.ch11;
import java.sql.*;
public class books extends db
{
	//定义成员变量
	private String BookID;
    private String BookTitle;
    private String BookPrice;  
    private String BookPic;
    private int UserID;
    
    //执行各种操作的sql语句
    private String strSql;
    
    
    

	public String getBookPic() {
		return BookPic;
	}

	public void setBookPic(String bookPic) {
		BookPic = bookPic;
	}

	public int getUserID() {
		return UserID;
	}

	public void setUserID(int userID) {
		UserID = userID;
	}

	public String getBookID() {
		return BookID;
	}

	public void setBookID(String bookID) {
		BookID = bookID;
	}

	public String getBookTitle() {
		return BookTitle;
	}

	public void setBookTitle(String bookTitle) {
		BookTitle = bookTitle;
	}


	public String getBookPrice() {
		return BookPrice;
	}

	public void setBookPrice(String bookPrice) {
		BookPrice = bookPrice;
	}

	//构造函数，初始化成员变量
    public books()throws InstantiationException, IllegalAccessException
    {       
        BookID="0";
        UserID=0;
        BookTitle="";
        BookPrice="";
   		strSql="";   
   }   

   public ResultSet show_all_books()
   {
    	strSql="select * from books";
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
   
   
   public ResultSet show_search_books()
   {
    	strSql="select * from books where BookTitle like ";
    	strSql=strSql + "'%" + BookTitle + "%'" ;
    	
        ResultSet rs = null;
        System.out.print(strSql);
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
   
   public ResultSet show_cart_books(String BookID)
   {
    	strSql="select * from books where BookID = ";
    	strSql=strSql + "'" + BookID + "'" ;
    	System.out.print(strSql+"<br>");
        ResultSet rs = null;
        System.out.print(strSql);
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
   
 
   /**
    *@设置成员变量WordsID的值
    */
  
   public boolean deletebooks(int booksID)
   {
        
	   strSql="delete from books where BooksID=";
	   strSql=strSql+BookID;
	   boolean isDelete = super.exeSql(strSql);
	   return isDelete;
   }

   

}

