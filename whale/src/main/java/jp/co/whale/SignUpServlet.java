package jp.co.whale;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	
	
	/**
	 * コンストラクタ
	 */
	public SignUpServlet() {
		super();
	}
	
	
	/**
	 *　POSTメソッドでリクエストされた場合の処理
	 *　@param request
	 * @param response
	 * @throws javax.servlet.ServletException
	 * @throws java.io.IIOException
	 */
	
	@Override
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//sign-up.jspにて入力された各パラメータの取得
		String nickname = request.getParameter("nickname");
		
		String name = request.getParameter("name");
		
		String email = request.getParameter("email");
		
		String password = request.getParameter("password");
		
		
	}
}
