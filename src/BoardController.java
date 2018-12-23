
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.Action;
import board.ActionForward;
import board.BoardDetailAction;
import board.BoardListAction;
import board.BoardWriteAction;
import board.BoardWriteFormAction;

/**
 * Servlet implementation class BoardController
 */
@WebServlet(urlPatterns = { "/BoardList.do", "/BoardWrite.do", "/BoardWriteFormAction.do", "/BoardListAction.do",
		"/BoardWriteAction.do", "/BoardDetailForm.do", "/BoardDetailAction.do" })
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ActionForward forward = null;
		Action action = null;
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();

		try {
			// 화면전환
			if (requestURI.equals(contextPath + "/BoardList.do")) // 글목록 화면 이동
			{
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setNextPath("/board.jsp");
			} else if (requestURI.equals(contextPath + "/BoardWrite.do")) // 메인화면 이동
			{
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setNextPath("/BoardWriteForm.jsp");
			} else if (requestURI.equals(contextPath + "/BoardWriteFormAction.do")) // 로그인화면 이동
			{
				action = new BoardWriteFormAction();
				forward = action.execute(request, response);
			} else if (requestURI.equals(contextPath + "/BoardListAction.do")) // 회원가입화면 이동
			{
				action = new BoardListAction();
				forward = action.execute(request, response);
			} else if (requestURI.equals(contextPath + "/BoardWriteAction.do")) // 각종 처리결과 화면 이동
			{
				action = new BoardWriteAction();
				forward = action.execute(request, response);
			} else if (requestURI.equals(contextPath + "/BoardDetailForm.do")) {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setNextPath("/BoardDetailForm.jsp");
			} else if (requestURI.equals(contextPath + "/BoardDetailAction.do")) {
				action = new BoardDetailAction();
				forward = action.execute(request, response);
			}
			// 각종 처리 액션

			/*
			 * 화면이동 - isRedirext() 값에 따라 sendRedirect 또는 forward를 사용 sendRedirect : 새로운
			 * 페이지에서는 request와 response객체가 새롭게 생성된다. forward : 현재 실행중인 페이지와 forwad에 의해 호출될
			 * 페이지는 request와 response 객체를 공유
			 */
			if (forward != null) {
				if (forward.isRedirect()) {
					response.sendRedirect(forward.getNextPath());
				} else {
					RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getNextPath());
					dispatcher.forward(request, response);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// end doProcess
	}
}