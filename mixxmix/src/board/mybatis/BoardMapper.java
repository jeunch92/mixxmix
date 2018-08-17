package board.mybatis;

import java.io.IOException;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import board.dto.BoardDTO;
import board.dto.FAQDTO;

public class BoardMapper {
	private static SqlSessionFactory sqlMapper;
	static {
		try {
			String resource = "Configuration.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			 throw new RuntimeException("Something bad happened while building the "
		               + "SqlSessionFactoryBuilder instance." + e, e);
		}
	} 
	
	public static List<BoardDTO> listBoard(){
		List<BoardDTO> list = null;
		SqlSession session = sqlMapper.openSession();
		try {
			list = session.selectList("listBoard");
			return list;
		}finally {
			session.close();
		}
	}
	
	
	public static List<FAQDTO> listFAQ(){
		List<FAQDTO> list = null;
		SqlSession session = sqlMapper.openSession();
		try {
			list = session.selectList("listFAQ");
			return list;
		}finally {
			session.close();
		}
	}
	
	public static void insertBoard(BoardDTO dto) {
		SqlSession session = sqlMapper.openSession();
		try {
			int res = session.insert("insertBoard", dto);
			session.commit();
			if(res>0) {
				System.out.println("성공");
			}else {
				System.out.println("실패");
			}
		}finally {
			session.close();
		}
	}
	
	public static void insertFAQ(FAQDTO dto) {
		SqlSession session = sqlMapper.openSession();
		try {
			int res = session.insert("insertFAQ", dto);
			session.commit();
			if(res>0) {
				System.out.println("성공");
			}else {
				System.out.println("실패");
			}
		}finally {
			session.close();
		}
	}
	
	public static BoardDTO getBoard(int num) {
		SqlSession session = sqlMapper.openSession();
		try {
			BoardDTO dto = session.selectOne("getBoard", num);
			return dto;
		}finally {
			session.close();
		}
	}
	
	public static FAQDTO getFAQ(int num) {
		SqlSession session = sqlMapper.openSession();
		try {
			FAQDTO dto = session.selectOne("getFAQ", num);
			return dto;
		}finally {
			session.close();
		}
	}
	
	public static void getReadCount(int num) {
		SqlSession session = sqlMapper.openSession();
		try {
			session.selectOne("getReadCount", num);
			session.commit();
		}finally {
			session.close();
		}
	}
	
	public static void getReadCount_F(int num) {
		SqlSession session = sqlMapper.openSession();
		try {
			session.selectOne("getReadCount_F", num);
			session.commit();
		}finally {
			session.close();
		}
	}
	
	public static void updateBoard(BoardDTO dto) {
		SqlSession session = sqlMapper.openSession();
		try {
			session.update("updateBoard", dto);
			session.commit();
		}finally {
			session.close();
		}
	}
	
	public static void FAQupdateBoard(FAQDTO dto) {
		SqlSession session = sqlMapper.openSession();
		try {
			session.update("FAQupdateBoard", dto);
			session.commit();
		}finally {
			session.close();
		}
	}
	
	public static void deleteBoard(int num) {
		SqlSession session = sqlMapper.openSession();
		try {
			session.update("deleteBoard", num);
			session.commit();
		}finally {
			session.close();
		}
	}
	
	public static void deleteFAQ(int num) {
		SqlSession session = sqlMapper.openSession();
		try {
			session.update("deleteFAQ", num);
			session.commit();
		}finally {
			session.close();
		}
	}
}











