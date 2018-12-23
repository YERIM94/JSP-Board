package board;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import board.ActionForward;
import member.MemberDAO;

public class BoardWriteFormAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = new ActionForward();

		// 세션이 가지고있는 로그인한 ID 정보를 가져온다
		HttpSession session = request.getSession();
        String id = session.getAttribute("sessionID").toString();

		// 회원정보를 가져온다.
		MemberDAO mdao = MemberDAO.getInstance();

		HashMap<String, String> memberInfo = new HashMap<String, String>();

		memberInfo = mdao.getUserInfo(id);

		String email = memberInfo.get("mail1") + "@"+memberInfo.get("mail2");

		// ModifyFrom.jsp에 회원정보를 전달하기 위해 request에 MemberBean을 세팅한다.
		request.setAttribute("email", email);

		forward.setRedirect(false);
		forward.setNextPath("BoardWrite.do");

		return forward;
	}
}