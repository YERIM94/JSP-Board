package member;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import member.MemberBean;
import member.MemberDAO;

public class MemberModifyFormAction implements Action {
	public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        ActionForward forward = new ActionForward();
        
        // 세션이 가지고있는 로그인한 ID 정보를 가져온다
        HttpSession session = request.getSession();
        String id = session.getAttribute("sessionID").toString();
        
        // 수정할 회원정보를 가져온다.
        MemberDAO dao = MemberDAO.getInstance();
        HashMap<String, String> memberInfo = new HashMap<String, String>();
        memberInfo = dao.getUserInfo(id);
        
        // ModifyFrom.jsp에 회원정보를 전달하기 위해 request에 MemberBean을 세팅한다.
        request.setAttribute("member", memberInfo);
        
        forward.setRedirect(false);
        forward.setNextPath("MemModifyForm.do");
        
        return forward;
    }
}
