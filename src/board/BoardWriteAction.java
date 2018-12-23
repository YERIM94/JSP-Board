package board;

import board.ActionForward;
import board.BoardBean;
import board.BoardDAO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BoardWriteAction implements Action{
    
    @Override
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        ActionForward forward = new ActionForward();
 
        try {
            BoardDAO dao = BoardDAO.getInstance();
            BoardBean boardData = new BoardBean();
            
            boardData.setBoard_num(dao.getSeq());
            boardData.setBoard_id(request.getParameter("id"));
            boardData.setBoard_email(request.getParameter("email"));
            boardData.setBoard_subject(request.getParameter("subject"));
            boardData.setBoard_content(request.getParameter("content"));
        
            boolean result = dao.boardInsert(boardData);
            
            if(result){
                forward.setRedirect(true);
                forward.setNextPath("BoardListAction.do");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("글 작성 오류 : " + e.getMessage());
        }
        return forward;
    }
}
