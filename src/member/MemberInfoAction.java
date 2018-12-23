package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import member.MemberBean;
import member.MemberDAO;



public class MemberInfoAction implements Action {
	
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        ActionForward forward = new ActionForward();
        
        // 세션이 가지고있는 로그인한 ID 정보를 가져온다
        HttpSession session = request.getSession();
        String id = session.getAttribute("sessionID").toString();
        
        // 그 아이디 해당하는 회원정보를 가져온다.
        MemberDAO dao = MemberDAO.getInstance();
        //MemberBean member = dao.getUserInfo(id);
        
        // UserInfoForm.jsp에 회원정보를 전달하기 위해 request에 MemberBean을 세팅한다.
        //request.setAttribute("memberInfo", member);
        
        forward.setRedirect(false);
        forward.setNextPath("Mem.UserInfoForm.do");
        // MainForm.jsp?contentPage=member/view/UserInfoForm.jsp
        
        return forward;
    }
}
