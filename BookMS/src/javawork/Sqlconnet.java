package javawork;

import java.sql.*;

public class Sqlconnet {
	// JDBC and DB url
	static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://60.205.219.120:3306/javaeed?serverTimezone=UTC";

	// username and passwd
	static final String USER = "root";
	static final String PASS = "123456";

	Connection conn = null;

	public Sqlconnet() throws Exception {

		// register driver class
		Class.forName("com.mysql.cj.jdbc.Driver");

		// open connection to DBMS
		conn = DriverManager.getConnection(DB_URL, USER, PASS);
	}

	public void Sqlclose() throws Exception {
		conn.close();
	}

	public ResultSet Select_Book() throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from book";
		ResultSet sets = stmt.executeQuery(sql);
		return sets;
	}

	public boolean Select_BookExisted() throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from book";
		ResultSet sets = stmt.executeQuery(sql);
		if (sets.next()) {
			return true;
		} else {
			return false;
		}
	}

	public boolean Select_BooknameExisted(String bookname) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from book where name='" + bookname + "'";
		ResultSet sets = stmt.executeQuery(sql);
		if (sets.next()) {
			return true;
		} else {
			return false;
		}
	}

	public boolean Select_BookidExisted(String bookid) throws SQLException {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from book where id='" + bookid + "'";
		ResultSet sets = stmt.executeQuery(sql);
		if (sets.next()) {
			return true;
		} else {
			return false;
		}
	}

	public boolean Select_BookcateExisted(String bookcate) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from book where category='" + bookcate + "'";
		ResultSet sets = stmt.executeQuery(sql);
		if (sets.next()) {
			return true;
		} else {
			return false;
		}
	}

	public ResultSet Select_BooknameInfo(String bookname) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from book where name='" + bookname + "'";
		ResultSet sets = stmt.executeQuery(sql);
		return sets;
	}

	public ResultSet Select_BookcateInfo(String bookcate) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from book where category='" + bookcate + "'";
		ResultSet sets = stmt.executeQuery(sql);
		return sets;
	}

	public ResultSet Select_BookIdInfo(String bookid) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from book where id='" + bookid + "'";
		ResultSet sets = stmt.executeQuery(sql);
		return sets;
	}

	public int Insert_Book(String bookid, String bookname, String bookpub, String booktime, String bookcate,
			String bookprice) throws SQLException {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "INSERT INTO book " + "VALUES ('" + bookid + "','" + bookname + "','" + bookpub + "','" + booktime
				+ "','" + bookcate + "','" + bookprice + "')";
		int result = stmt.executeUpdate(sql);
		return result;
	}

	public int Delete_Book(String bookid) throws SQLException {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "DELETE FROM book where id='" + bookid + "'";
		int result = stmt.executeUpdate(sql);
		return result;
	}

	public int Update_Book(String bookid, String bookname, String bookpub, String booktime, String bookcate,
			String bookprice) throws SQLException {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "UPDATE book set name='" + bookname + "',published='" + bookpub + "',time='" + booktime
				+ "',category='" + bookcate + "',price='" + bookprice + "' where id='" + bookid + "'";
		int result = stmt.executeUpdate(sql);
		return result;
	}

	public ResultSet Select_Borrow() throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from borrow";
		ResultSet sets = stmt.executeQuery(sql);
		return sets;
	}

	public ResultSet Select_Userborrow(String name) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from borrow where readernick='" + name + "'";
		ResultSet sets = stmt.executeQuery(sql);
		return sets;
	}

	public boolean Select_BorrowExisted(String name) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from borrow where readernick='" + name + "'";
		ResultSet sets = stmt.executeQuery(sql);
		if (sets.next()) {
			return true;
		} else {
			return false;
		}
	}

	public ResultSet Select_Reader() throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from reader";
		ResultSet sets = stmt.executeQuery(sql);
		return sets;
	}
	
	public int Update_UserInfo(String nickname, String name, String department, String profession, String hobby, String birth, String grade) throws SQLException {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "UPDATE reader set name='" + name + "',department='" + department + "',profession='" + profession
				+ "',hobby='" + hobby + "',birth='"+birth+"',grade='" + grade+"' where nickname='"+nickname+"'";
		int result = stmt.executeUpdate(sql);
		return result;
	}

	public ResultSet Select_Reader(String name) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "select * from reader where nickname='" + name + "'";
		ResultSet sets = stmt.executeQuery(sql);
		return sets;
	}

	public boolean Select_Userlogin(String name, String passwd) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "SELECT * FROM user_login WHERE ";
		sql = sql + "username='" + name + "' and userpasswd='" + passwd + "'";
		ResultSet sets = stmt.executeQuery(sql);
		if (sets.next()) {
			return true;
		} else {
			return false;
		}
	}

	public boolean Select_UserExisted(String name) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "SELECT * FROM user_login WHERE ";
		sql = sql + "username='" + name + "'";
		ResultSet sets = stmt.executeQuery(sql);
		if (sets.next()) {
			return true;
		} else {
			return false;
		}
	}

	public boolean Select_UserIdExisted(String userid) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "SELECT * FROM reader WHERE ";
		sql = sql + "studentid='" + userid + "'";
		ResultSet sets = stmt.executeQuery(sql);
		if (sets.next()) {
			return true;
		} else {
			return false;
		}
	}

	public boolean Select_Rootlogin(String name, String passwd) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "SELECT * FROM root_login WHERE ";
		sql = sql + "rootname='" + name + "' and rootpasswd='" + passwd + "'";
		ResultSet sets = stmt.executeQuery(sql);
		if (sets.next()) {
			return true;
		} else {
			return false;
		}
	}

	public int Delete_Reader(String nickname) throws SQLException {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "DELETE FROM reader where nickname='" + nickname + "'";
		int result1 = this.Delete_User(nickname);
		int result2 = -1;
		if (result1 > 0) {
			result2 = stmt.executeUpdate(sql);
		}
		return result2;
	}

	public int Delete_User(String username) throws SQLException {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "DELETE FROM user_login where username='" + username + "'";
		int result = stmt.executeUpdate(sql);
		return result;
	}

	public int Insert_Reader(String nickname, String name, String nickpasswd, String studentid, String department,
			String profession, String hobby, String birth, String grade) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "INSERT INTO reader(nickname, name, studentid, department, profession, hobby, birth, grade) "
				+ "VALUES ('" + nickname + "', '" + name + "', '" + studentid + "', '" + department + "', '"
				+ profession + "', '" + hobby + "', '" + birth + "', '" + grade + "')";
		int result1 = this.Insert_User(nickname, nickpasswd);
		int result2 = -1;
		if (result1 > 0) {
			result2 = stmt.executeUpdate(sql);
		}
		return result2;
	}

	public int Insert_Borrow(String nickname, String bookid, String borrowtime, String rebacktime) throws Exception {
		Statement stmt = null;
		int result = -1;
		String sql1 = "select max(id) as id from borrow";
		String sql2 = "select studentid from reader where nickname='" + nickname + "'";
		String sql3 = "select name from book where id='" + bookid + "'";

		stmt = conn.createStatement();
		ResultSet set1 = stmt.executeQuery(sql1);
		set1.next();
		String borrowid = String.valueOf(Integer.parseInt(set1.getString("id")) + 1);
		ResultSet set2 = stmt.executeQuery(sql2);
		set2.next();
		String studentid = set2.getString("studentid");
		ResultSet set3 = stmt.executeQuery(sql3);
		set3.next();
		String bookname = set3.getString("name");

		String sql4 = "INSERT INTO borrow VALUES('" + borrowid + "','" + nickname + "','" + studentid + "','" + bookname
				+ "','" + bookid + "','" + borrowtime + "','" + rebacktime + "')";
		result = stmt.executeUpdate(sql4);

		return result;
	}

	public int Delete_Borrow(String username, String borrowid) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "DELETE FROM borrow where id='" + borrowid + "' and readernick='" + username + "'";
		int result = stmt.executeUpdate(sql);
		return result;
	}

	public int Update_UserPasswd(String username, String passwd) throws SQLException {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "UPDATE user_login set userpasswd='" + passwd + "' where username='" + username + "'";
		int result = stmt.executeUpdate(sql);
		return result;
	}

	public int Insert_User(String username, String passwd) throws Exception {
		Statement stmt = null;
		stmt = conn.createStatement();
		String sql = "INSERT INTO user_login(username, userpasswd)" + "VALUES ('" + username + "','" + passwd + "')";
		int result = stmt.executeUpdate(sql);
		return result;
	}
}

class Sqlconnettest {
	public static void main(String args[]) throws Exception {
		Sqlconnet con1 = new Sqlconnet();

		con1.Sqlclose();
	}
}
