
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.Action;
import member.ActionForward;
import member.AdminMemberJoinAction;
import member.MemberDeleteAction;
import member.MemberInfoAction;
import member.MemberJoinAction;
import member.MemberListAction;
import member.MemberLoginAction;
import member.MemberLogoutAction;
import member.MemberModifyAction;
import member.MemberModifyFormAction;

/**
 * Servlet implementation class MemberController
 */

@WebServlet(urlPatterns= {"/MemProfile.do","/MemLogin.do","/login.do","/MemJoinForm.do","/MemModifyForm.do","/MemResult.do"
		,"/MemLoginAction.do","/MemLogoutAction.do","/MemberJoinAction.do","/MemModifyFormAction.do","/MemModifyAction.do","/MemDeleteAction.do"
		,"/MemListAction.do","/MemListForm.do","/AdminMemJoinForm.do","/AdminMemJoinAction.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doProcess(request,response);
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doProcess(request,response);
		doProcess(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
       
       // 넘어온 커맨드를 추출하는 과정
       String requestURI = request.getRequestURI();
//       int cmdIdx = requestURI.lastIndexOf("/")+1;
       
       String contextPath = request.getContextPath();
   
       String command ="";
       
       
       // URI, command 확인
       //System.out.println("requestURI : "+requestURI);
       //System.out.println("command : "+command);
       
       ActionForward forward = null;
       Action action = null;
       
       // 보여줄 화면 URL
       String form = "contextPath";
       
       // 커맨드에 해당하는 액션을 실행한다.
       try {
           // 화면전환
    	   if(requestURI.equals(contextPath+"/login.do")) // 메인화면 이동
           {
               forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath("/WEB-INF/login/login.jsp");
           }
    	   else if(requestURI.equals(contextPath+"/MemProfile.do")) // 메인화면 이동
           {
               forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath("/profile.jsp");
           }
           else if(requestURI.equals(contextPath+"/MemLogin.do"))    // 로그인화면 이동
           {
               forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath("/WEB-INF/login/login.jsp");
           }
           else if(requestURI.equals(contextPath+"/MemJoinForm.do"))    // 회원가입화면 이동
           {
               forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath("/WEB-INF/register/Register.jsp");
           }
           else if(command.equals("MemUserInfoForm.do"))    // 내정보 클릭 - 회원정보화면 이동
           {
               forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath(form+"UserInfoForm.jsp");
           }
           else if(requestURI.equals(contextPath+"/MemModifyForm.do")) // 회원수정화면 이동
           {
               forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath("/WEB-INF/register/Modify.jsp");
           }
           else if(command.equals("MemDeleteForm.do")) // 회원삭제화면 이동
           {
               forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath(form+"DeleteForm.jsp");
           }
           else if(requestURI.equals(contextPath+"/MemResult.do")) // 각종 처리결과 화면 이동
           {
               forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath("/WEB-INF/register/MemResult.jsp");
           }
           // 각종 처리 액션
           else if(requestURI.equals(contextPath+"/MemLoginAction.do")) // 로그인 처리
           {
               action = new MemberLoginAction();
               forward = action.execute(request, response);
           }
           else if(requestURI.equals(contextPath+"/MemLogoutAction.do")) // 로그아웃 처리
           {
               action = new MemberLogoutAction();
               forward = action.execute(request, response);
           }
           else if(requestURI.equals(contextPath+"/MemberJoinAction.do")) // 회원가입 처리
           {
               action = new MemberJoinAction();
               forward = action.execute(request, response);
           }
           else if(command.equals("MemberInfoAction.do")) // 회원정보화면에 보여줄 정보 처리
           {
               action = new MemberInfoAction();
               forward = action.execute(request, response);
           }
           else if(requestURI.equals(contextPath+"/MemModifyFormAction.do")) // 회원수정화면에 보여줄 정보 처리
           {
               action = new MemberModifyFormAction();
               forward = action.execute(request, response);
           }
           else if(requestURI.equals(contextPath+"/MemModifyAction.do")) // 회원수정 처리
           {
               action = new MemberModifyAction();
               forward = action.execute(request, response);
           }
           else if(requestURI.equals(contextPath+"/MemDeleteAction.do")) // 회원삭제 처리
           {
               action = new MemberDeleteAction();
               forward = action.execute(request, response);
           }
           else if(requestURI.equals(contextPath+"/MemListAction.do")) // 메인화면 이동
           {
        	   action = new MemberListAction();
               forward = action.execute(request, response);
               
           }
           else if(requestURI.equals(contextPath+"/MemListForm.do")) // 메인화면 이동
           {
        	   forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath("/WEB-INF/member/MemListForm.jsp");
           }
           else if(requestURI.equals(contextPath+"/AdminMemJoinForm.do")) // 메인화면 이동
           {
        	   forward=new ActionForward();
               forward.setRedirect(false);
               forward.setNextPath("/WEB-INF/register/Adminregister.jsp");
           }
           else if(requestURI.equals(contextPath+"/AdminMemJoinAction.do")) // 메인화면 이동
           {
        	   action = new AdminMemberJoinAction();
               forward = action.execute(request, response);
               
           }

           // 화면이동 - isRedirext() 값에 따라 sendRedirect 또는 forward를 사용
           // sendRedirect : 새로운 페이지에서는 request와 response객체가 새롭게 생성된다.
           // forward : 현재 실행중인 페이지와 forward에 의해 호출될 페이지는 request와 response 객체를 공유
           if(forward != null){
               if (forward.isRedirect()) {
                   response.sendRedirect(forward.getNextPath());
               } else {
                   RequestDispatcher dispatcher = request
                           .getRequestDispatcher(forward.getNextPath());
                   dispatcher.forward(request, response);
               }
           }

       } catch (Exception e) {
           e.printStackTrace();
       }
   } // end doProcess

}
