package member.mybatis;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import member.dto.MemberDTO;

public class MemberMapper {
   private static SqlSessionFactory sqlMapper;
   //xml파일불러내기위함
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
   
   public static List<MemberDTO> listMember(){
		List<MemberDTO> list = null;
		SqlSession session = sqlMapper.openSession();
		try {
			list = session.selectList("listMember");
			return list;
		}finally {
			session.close();
		}
	}
   
   public static List<MemberDTO> findMember(String sql){
	   List<MemberDTO> find = null;
		SqlSession session = sqlMapper.openSession();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("sql", sql);
		try {
			find = session.selectList("findMember",map);
			return find;
		}finally {
			session.close();
		}
   }
   
   public static int insertMember(MemberDTO dto) {
      SqlSession session = sqlMapper.openSession();
      try {
         session.insert("insertMember",dto);
         session.commit();
      }finally {
         session.close();
      }
      return 1;
   }

   public static List<MemberDTO> idId(String id) {
      List<MemberDTO> list = null;
      SqlSession session = sqlMapper.openSession();
      try {
         list = session.selectList("isId",id);
         return list;
      }finally {
         session.close();
      }
   }
   
   public static String checkLogin(String sql) {
		SqlSession session = sqlMapper.openSession();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("sql", sql);
		try {
			String db_passwd = session.selectOne("checkLogin", map);
			return db_passwd;
		}finally {
			session.close();
		}
	}
   
   public static int deleteMember(int m_num) {
	   SqlSession session = sqlMapper.openSession();
	   try {
	      int res = session.update("deleteMember",m_num);
	      session.commit();
	      return res;
	   }finally {
	      session.close();
	   }
	}
   
   public static String findId(String sql) {
	   SqlSession session = sqlMapper.openSession();
	   HashMap<String, String> map = new HashMap<String, String>();
	   map.put("sql", sql);
	   try {
			String db_id = session.selectOne("findId", map);
			return db_id;
		}finally {
			session.close();
		}
   }
   
   public static String findPasswd(String sql) {
	   SqlSession session = sqlMapper.openSession();
	   HashMap<String, String> map = new HashMap<String, String>();
	   map.put("sql", sql);
	   try {
		   String db_passwd = session.selectOne("findPasswd", map);
		   return db_passwd;
	   }finally {
		   session.close();
	   }
   }
   
   public static List<String> getList(){
       SqlSession session = sqlMapper.openSession();
       List<String> list  = null;
       try {
          list = session.selectList("getList");
          return list;
       }finally {
          session.close();
       }
    }
   
   public static int updateMember(MemberDTO dto) {
	   SqlSession session = sqlMapper.openSession();
	   try {
		   int res = session.update("updateMember",dto);
		   session.commit();
		   return res;
	   }finally {
		   session.close();
	   }
   }

}