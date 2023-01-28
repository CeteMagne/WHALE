package jp.co.whale;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

public class SignUpBeans {

	private String nickname;
	private String name;
	private String email;
	private String password;

	//DB関連の初期設定
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;

	/**
	 * コンストラクタ
	 * @param request
	 */
	public SignUpBeans(HttpServletRequest request) {
		setName(request.getParameter("name"));
		setNickname(request.getParameter("nickname"));
		setEmail(request.getParameter("email"));
		setPassword(request.getParameter("password"));
	}

	/**
	 * データベースへのアクション
	 * @param sql
	 * @throws Exception
	 */
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
	
	//getterおよびsetter
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * SignUp
	 * @return Boolean
	 */
	public Boolean SignUp() {
		try {

			//sql文の作成
			String sql = "insert into users(nickname, name, email, password) values ('" + nickname + "','" + name + "','" + email + "','" + password + "')";

			//デーtベースへの接続およびsqlの実行
			doDataBase(sql);

			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
