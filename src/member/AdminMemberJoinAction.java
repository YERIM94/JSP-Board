package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import member.MemberBean;
import member.MemberDAO;


public class AdminMemberJoinAction implements Action {
	@Override
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        request.setCharacterEncoding("euc-kr"); // 인코딩
        
        ActionForward forward = new ActionForward();
        
        MemberDAO dao = MemberDAO.getInstance();
        
        // 입력된 정보를 자바빈에 세팅한다.
        MemberBean member = new MemberBean();
        member.setId(request.getParameter("id"));
        member.setPassword(request.getParameter("password"));
        member.setName(request.getParameter("name"));
        member.setBirthyy(request.getParameter("birthyy"));
        member.setBirthmm(request.getParameter("birthmm"));
        member.setBirthdd(request.getParameter("birthdd"));
        member.setMail1(request.getParameter("mail1"));
        member.setMail2(request.getParameter("mail2"));
        member.setPhone1(request.getParameter("phone1"));
        member.setPhone2(request.getParameter("phone2"));
        member.setAddress(request.getParameter("adress"));
        member.setZipcode(request.getParameter("zipcode"));
        member.setAuth(request.getParameter("auth"));
        
        // 회원가입 실행
        dao.insertMember(member);
        
        // 가입성공
        forward.setRedirect(true);
           forward.setNextPath("MemResult.do");
        
           // 가입성공 메시지를 세션에 담는다.
           request.getSession().setAttribute("msg", "1");
           
        return forward;
	}
}
