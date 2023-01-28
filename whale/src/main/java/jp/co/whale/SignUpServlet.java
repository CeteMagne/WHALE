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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//modeの取得
		String mode = request.getParameter("mode");

		//JavaBeansの初期化
		SignUpBeans sign = new SignUpBeans(request);

		switch (mode) {
		case "signup":
			if (sign.SignUp() == false) {

			}
			request.getRequestDispatcher("/sign-in.jsp").forward(request, response);
			break;
		}
		
	}
	
	/**
	 * Getメソッドでリクエストされた場合の処理
	 * @param request
	 * @param response
	 * @throws javax.servlet.ServletException
	 * @throws java.io.IIOException
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
		
	}

}
