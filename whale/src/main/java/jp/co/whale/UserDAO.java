package jp.co.whale;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {

	//初期設定
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;

	public UserDAO() {
		super();
	}

	private void doDataBase(String sql) throws Exception {

		//コンテキストを取得
		InitialContext ic = new InitialContext();
		//ルックアップしてデータソースを取得
		ds = (DataSource) ic.lookup("java:comp/env/jdbc/whale");
		conn = ds.getConnection();

		//sql文の表示
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		//sql文の実行
		pstmt.execute();
		conn.close();
	}
}
