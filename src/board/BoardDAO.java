package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
 
import DB.DBConnection;
import member.MemberBean; 
 
public class BoardDAO 
{
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    
    private static BoardDAO instance;
    
    private BoardDAO(){}
    public static BoardDAO getInstance(){
        if(instance==null)
            instance=new BoardDAO();
        return instance;
    }
    
    // 시퀀스를 가져온다.
    public int getSeq()
    {
        int result = 1;
        
        try {
            conn = DBConnection.getConnection();
            
            // 시퀀스 값을 가져온다. (DUAL : 시퀀스 값을 가져오기위한 임시 테이블)
            StringBuffer sql = new StringBuffer();
            sql.append("SELECT BOARD_NUM.NEXTVAL FROM DUAL");
            
            pstmt = conn.prepareStatement(sql.toString());
            // 쿼리 실행
            rs = pstmt.executeQuery();
            
            if(rs.next())    result = rs.getInt(1);
 
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
        
        close();
        return result;    
    } // end getSeq
    
    // 글 삽입
    public boolean boardInsert(BoardBean board)
    {
        boolean result = false;
        
        try {
            conn = DBConnection.getConnection();
            
            StringBuffer sql = new StringBuffer();
            sql.append("INSERT INTO board");
            sql.append("(BOARD_NUM, BOARD_ID, BOARD_SUBJECT, BOARD_CONTENT");
            sql.append(",BOARD_COUNT,board_email,BOARD_DATE)");
            sql.append(" VALUES(?,?,?,?,?,?,?)");
 
            // 시퀀스 값을 글번호와 그룹번호로 사용
            int num = board.getBoard_num();
 
            java.util.Date utilDate = new java.util.Date();
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            
            pstmt = conn.prepareStatement(sql.toString());
            pstmt.setInt(1, num);
            pstmt.setString(2, board.getBoard_id());
            pstmt.setString(3, board.getBoard_subject());
            pstmt.setString(4, board.getBoard_content());
            pstmt.setInt(5, 0);
            pstmt.setString(6, board.getBoard_email());
            pstmt.setString(7, sqlDate.toString());
            
            int flag = pstmt.executeUpdate();
            if(flag > 0){
               result = true;
               conn.commit(); 
            }

        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
        close();
        return result;    
    } // end boardInsert();
    
    // DB 자원해제
    private void close()
    {
        try {
            if ( pstmt != null ){ pstmt.close(); pstmt=null; }
            if ( conn != null ){ conn.close(); conn=null;    }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    } // end close()
    
    public ArrayList<BoardBean> getBoardList() {
		ArrayList<BoardBean> BoardList = new ArrayList<BoardBean>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardBean board = null;

		try {
			StringBuffer query = new StringBuffer();
			query.append("SELECT * FROM board");

			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(query.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				board = new BoardBean();
				board.setBoard_content(rs.getString("board_content"));
				board.setBoard_count(rs.getInt("board_count"));
				board.setBoard_date(rs.getString("board_date"));
				board.setBoard_email(rs.getString("board_email"));
				board.setBoard_id(rs.getString("board_id"));
				board.setBoard_num(rs.getInt("board_num"));
				board.setBoard_subject(rs.getString("board_subject"));
				
				BoardList.add(board);
			}

			return BoardList;

		} catch (Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
		} finally {
			// Connection, PreparedStatement를 닫는다.
			try {
				if (pstmt != null) {
					pstmt.close();
					pstmt = null;
				}
				if (conn != null) {
					conn.close();
					conn = null;
				}
			} catch (Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
	}
    
    public BoardBean getDetail(int boardNum)
    {    
        BoardBean board = null;
        
        try {
            conn = DBConnection.getConnection();
            
            StringBuffer sql = new StringBuffer();
            sql.append("select * from BOARD where BOARD_NUM = ?");
            
            pstmt = conn.prepareStatement(sql.toString());
            pstmt.setInt(1, boardNum);
            
            rs = pstmt.executeQuery();
            if(rs.next())
            {
                board = new BoardBean();
                board.setBoard_id(rs.getString("board_id"));
                board.setBoard_email(rs.getString("board_email"));
                board.setBoard_subject(rs.getString("BOARD_SUBJECT"));
                board.setBoard_content(rs.getString("BOARD_CONTENT"));
            }
            
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
        
        close();
        return board;
    } // end getDetail()
}