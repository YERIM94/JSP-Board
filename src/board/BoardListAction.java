package board;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
 
/**
 * 모든 회원정보를 보여주는 Action
 */
public class BoardListAction implements Action
{
    @Override
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        ActionForward forward = new ActionForward();
        
        // 글정보 가져온다.
       
        BoardDAO dao = BoardDAO.getInstance();
        ArrayList<BoardBean> boardList = dao.getBoardList();
        
        List<Map> maplist = new ArrayList<Map>();
        
        for(BoardBean board : boardList){
        	HashMap<String, String> list = new HashMap<String, String>();
        	list.put("id", board.getBoard_id());
        	list.put("email", board.getBoard_email());
        	list.put("num", Integer.toString(board.getBoard_num()));
        	list.put("count", Integer.toString(board.getBoard_count()));
        	list.put("date", board.getBoard_date());
        	list.put("subject", board.getBoard_subject());
        	maplist.add(list);
        }
        
        // MemberListForm.jsp에 회원정보를 전달하기 위해 request에 MemberBean을 세팅한다.
        request.setAttribute("boardList", maplist);
 
        // request를 유지해야 하므로 setRedirect(false)로 지정한다.
        forward.setRedirect(false);
        forward.setNextPath("BoardList.do");
        
        return forward;
    }
}