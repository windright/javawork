package javawork;
import java.sql.ResultSet;

import javawork.Sqlconnet;

public class RooterMs {
	String rooter;

	public RooterMs() {
		super();
		this.rooter = "";
		// TODO Auto-generated constructor stub
	}

	public RooterMs(String rooter) {
		super();
		this.rooter = rooter;
	}

	public String getRooter() {
		return rooter;
	}

	public void setRooter(String rooter) {
		this.rooter = rooter;
	}

	public int InsertUser(String nickname, String name, String nickpasswd, String studentid, String department,
			String profession, String hobby, String birth, String grade) {
		int result = -1;
		try {
			Sqlconnet con1 = new Sqlconnet();
			result = con1.Insert_Reader(nickname, name, nickpasswd, studentid, department, profession, hobby, birth,
					grade);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public int DeleteUser(String nickname) {
		int result = -1;
		try {
			Sqlconnet con1 = new Sqlconnet();
			result = con1.Delete_Reader(nickname);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public String[][] getUserinfo() {
		String[][] info;
		int col = 8;
		int row = 0;
		info = new String[row][col];

		try {
			Sqlconnet con1 = new Sqlconnet();
			ResultSet set = con1.Select_Reader();
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

		return info;
	}

	public String[] getSelfinfo() {
		String[] info = new String[8];
		int col = 8;
		try {
			Sqlconnet con1 = new Sqlconnet();
			ResultSet set = con1.Select_Reader(this.rooter);
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

	public String[] getUserinfo(String username) {
		String[] info = new String[8];
		int col = 8;
		try {
			Sqlconnet con1 = new Sqlconnet();
			ResultSet set = con1.Select_Reader(username);
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

	public int UpdateUserInfo(String nickname, String name, String department, String profession, String hobby, String birth, String grade) {
		int result = -1;
		try {
			Sqlconnet con1 = new Sqlconnet();
			result = con1.Update_UserInfo(nickname, name, department, profession, hobby, birth, grade);
			con1.Sqlclose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	public int InsertBook(String bookid, String bookname, String bookpub, String booktime, String bookcate,
			String bookprice) {
		int result = -1;
		try {
			Sqlconnet con1 = new Sqlconnet();
			result = con1.Insert_Book(bookid, bookname, bookpub, booktime, bookcate, bookprice);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public int DeleteBook(String bookid) {
		int result = -1;
		try {
			Sqlconnet con1 = new Sqlconnet();
			result = con1.Delete_Book(bookid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public String[][] getBooknameInfo(String bookname) {
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

	public String[][] getBookcateInfo(String bookcate) {
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

	public String[][] getBookInfo() {
		String[][] info;
		int col = 6;
		int row = 0;
		info = new String[row][col];

		try {
			Sqlconnet con1 = new Sqlconnet();
			ResultSet set = con1.Select_Book();
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

	
	public String[] getBookIdInfo(String bookid) {
		String[] info = new String[6];
		int col = 6;
		try {
			Sqlconnet con1 = new Sqlconnet();
			ResultSet set = con1.Select_BookIdInfo(bookid);
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
//		for(int j=0;j<col;j++) {
//			System.out.println(info[i][j]);
//		}	
		return info;
	}

	public int UpdateBook(String bookid, String bookname, String bookpub, String booktime, String bookcate,
			String bookprice) {
		int result = -1;
		try {
			Sqlconnet con1 = new Sqlconnet();
			result = con1.Update_Book(bookid, bookname, bookpub, booktime, bookcate, bookprice);
			con1.Sqlclose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
}

class test2 {
	public static void main(String args[]) {
//		RooterMs ms1 = new RooterMs("root1_");
//		ms1.UpdateUserInfo("user2_", "gailun", "physics", "nuclear physics", "excersise", "1995-6-1", "2");
//		String[] result1 = new String[0];
//		String[][] result2 = new String[0][0];
//		ms1.InsertUser("user_5", "dashu", "123456", "320150000006", "math", "math", "peace", "1995-1-1", "2");
//		result1=ms1.getSelfinfo();
//		result2=ms1.getUserinfo();
//		result1=ms1.getUserinfo("root1_");
//		ms1.DeleteUser("user_5");

//		ms1.InsertBook("111111", "culture origin", "lanzhoudaxue", "1996-1-1", "wenxue", "1");
//		result2=ms1.getBookcateInfo("wenxue");
//		result2=ms1.getBooknameInfo("culture origin");
//		result1=ms1.getBookIdInfo("9787530216774");
//		ms1.UpdateBook("111111", "culture origin", "兰州大学出版社", "1986-1-1", "wenxue", "2");
//		ms1.DeleteBook("111111");
//
//		for (int j = 0; j < result1.length; j++) {
//			System.out.println(result1[j]);
//		}
//		
//		for (int i = 0; i < result2.length; i++) {
//			for (int j = 0; j < result2[0].length; j++) {
//				System.out.println(result2[i][j]);
//			}
//		}
	}
}
