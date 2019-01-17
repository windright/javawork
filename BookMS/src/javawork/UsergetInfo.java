package javawork;
import java.sql.ResultSet;

import javawork.Sqlconnet;

public class UsergetInfo {
	String user;

	public UsergetInfo() {
		super();
		this.user = "";
		// TODO Auto-generated constructor stub
	}

	public UsergetInfo(String user) {
		super();
		this.user = user;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String[] getUserinfo() {
		String[] info = new String[8];
		int col = 8;
		try {
			Sqlconnet con1 = new Sqlconnet();
			ResultSet set = con1.Select_Reader(this.user);
			if (set.next()) {
//				col = set.getMetaData().getColumnCount();
				for (int i = 1; i <= col; i++) {
					info[i - 1] = set.getString(i);
				}
			}
			con1.Sqlclose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return info;
	}
	
	public String[][] getBooknameInfo(String bookname){
		String[][] info;
		int col = 6;
		int row = 0;
		info = new String[row][col];

		try {
			Sqlconnet con1 = new Sqlconnet();
			ResultSet set = con1.Select_BooknameInfo(bookname);
			if (set.next()) {
				set.last();
				row = set.getRow();
				info = new String[row][col];
				int i = 0;
				set.beforeFirst();

				while (set.next()) {
					for (int j = 0; j < col; j++) {
						info[i][j] = set.getString(j + 1);
					}
					i++;
				}
			}
			con1.Sqlclose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		for(int i=0;i<info.length;i++) {
//			for(int j=0;j<col;j++) {
//				System.out.println(info[i][j]);
//			}
//		}
		return info;
	}
	
	public String[][] getBookcateInfo(String bookcate){
		String[][] info;
		int col = 6;
		int row = 0;
		info = new String[row][col];

		try {
			Sqlconnet con1 = new Sqlconnet();
			ResultSet set = con1.Select_BookcateInfo(bookcate);
			if (set.next()) {
				set.last();
				row = set.getRow();
				info = new String[row][col];
				int i = 0;
				set.beforeFirst();

				while (set.next()) {
					for (int j = 0; j < col; j++) {
						info[i][j] = set.getString(j + 1);
					}
					i++;
				}
			}
			con1.Sqlclose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		for(int i=0;i<info.length;i++) {
//			for(int j=0;j<col;j++) {
//				System.out.println(info[i][j]);
//			}
//		}
		return info;
	}

	public String[][] getUserborrowInfo() {
		String[][] info;
		int col = 7;
		int row = 0;
		info = new String[row][col];

		try {
			Sqlconnet con1 = new Sqlconnet();
			ResultSet set = con1.Select_Userborrow(this.user);
			if (set.next()) {
				set.last();
				row = set.getRow();
				info = new String[row][col];
				int i = 0;
				set.beforeFirst();

				while (set.next()) {
					for (int j = 0; j < col; j++) {
						info[i][j] = set.getString(j + 1);
					}
					i++;
				}
			}
			con1.Sqlclose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		for(int i=0;i<info.length;i++) {
//			for(int j=0;j<col;j++) {
//				System.out.println(info[i][j]);
//			}
//		}
		return info;
	}
	
	public int UpdateUserPasswd(String passwd) {
		int result=-1;
		try {
			Sqlconnet con1=new Sqlconnet();
			result=con1.Update_UserPasswd(this.user, passwd);
			con1.Sqlclose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int DeleteBorrow(String borrowid) {
		int result=-1;
		
		try {
			Sqlconnet con1=new Sqlconnet();
			result=con1.Delete_Borrow(this.user,borrowid);
			con1.Sqlclose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public int InsertBorrow(String bookid,String borrowtime,String rebacktime) {
		int result=-1;
		
		try {
			Sqlconnet con1=new Sqlconnet();
			result=con1.Insert_Borrow(this.user, bookid, borrowtime, rebacktime);
			con1.Sqlclose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
}

class test1 {
	public static void main(String args[]) {
		UsergetInfo user1 = new UsergetInfo("user3_");
		user1.UpdateUserPasswd("wangjie");
	}
}
