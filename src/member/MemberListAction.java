package member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import member.MemberBean;
import member.MemberDAO;
 
/**
 * 모든 회원정보를 보여주는 Action
 */
public class MemberListAction implements Action
{
    @Override
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        ActionForward forward = new ActionForward();
        
        // 회원정보를 가져온다.
        MemberDAO dao = MemberDAO.getInstance();
        ArrayList<MemberBean> memberList = dao.getMemberList();
        List<Map> maplist = new ArrayList<Map>();
        
        for(MemberBean member : memberList){
        	HashMap<String, String> list = new HashMap<String, String>();
        	list.put("id", member.getId());
        	list.put("password", member.getPassword());
        	list.put("name", member.getName());
        	list.put("birthyy", member.getBirthyy());
        	list.put("birthmm", member.getBirthmm());
        	list.put("bitrhdd", member.getBirthdd());
        	list.put("mail1", member.getMail1());
        	list.put("mail2", member.getMail2());
        	list.put("phone1", member.getPhone1());
        	list.put("phone2", member.getPhone2());
        	list.put("address", member.getAddress());
        	list.put("zipcode", member.getZipcode());
        	list.put("regdate", member.getRegdate());
        	list.put("auth", member.getAuth());
        	maplist.add(list);
        }
        
        // MemberListForm.jsp에 회원정보를 전달하기 위해 request에 MemberBean을 세팅한다.
        request.setAttribute("memberList", maplist);
 
        // request를 유지해야 하므로 setRedirect(false)로 지정한다.
        forward.setRedirect(false);
        forward.setNextPath("MemListForm.do");
        
        return forward;
    }
}