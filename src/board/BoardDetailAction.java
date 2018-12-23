package board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import board.BoardBean;
import board.BoardDAO;
import board.Action;
import board.ActionForward;
 
public class BoardDetailAction implements Action
{
    @Override
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        ActionForward forward = new ActionForward();
        
        // 파라미터로 넘어온 글번호를 가져온다.
        String num = request.getParameter("post_num");
        int boardNum = Integer.parseInt(num);
        
        System.out.println(boardNum);
        
        //String pageNum = request.getParameter("pageNum");
        
        BoardDAO dao = BoardDAO.getInstance();
        BoardBean board = dao.getDetail(boardNum);
       // boolean result = dao.updateCount(boardNum);
        
        request.setAttribute("id",board.getBoard_id());
        request.setAttribute("subject",board.getBoard_subject());
        request.setAttribute("content",board.getBoard_content());
        request.setAttribute("num",board.getBoard_num());
        request.setAttribute("email",board.getBoard_email());
       
        //request.setAttribute("pageNum", pageNum);
        
//        if(result){
            forward.setRedirect(false); // 단순한 조회이므로
            forward.setNextPath("BoardDetailForm.do");
//        }
        
        return forward;
    }
}
