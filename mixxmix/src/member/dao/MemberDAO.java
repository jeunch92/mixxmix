package member.dao;

import member.dto.MemberDTO;

import java.util.HashMap;
import java.util.List;

public interface MemberDAO {
   public int insertMember(MemberDTO dto);
   public List<MemberDTO> isId(String id);
   public List<MemberDTO> listMember();
   public List<MemberDTO> findMember(String searchString, String search);
   public String checkLogin(String id);
   public int deleteMember(int m_num);
   public String findId(MemberDTO dto, String searchType, HashMap<String, String> radio);
   public String findPasswd(MemberDTO dto, String searchType, HashMap<String, String> radio);
   public int updateMember(MemberDTO dto);
}