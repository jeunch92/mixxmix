package member.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import member.dto.MemberDTO;
import member.mybatis.MemberMapper;

public class MemberDAOImpl implements MemberDAO {

   private JdbcTemplate jdbcTemplate;
   
   public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
      this.jdbcTemplate = jdbcTemplate;
   }
   
   @Override
   public int insertMember(MemberDTO dto) {
      return MemberMapper.insertMember(dto);
   }

   @Override
   public List<MemberDTO> isId(String id) {
      return MemberMapper.idId(id);
   }

	@Override
	public List<MemberDTO> listMember() {
		return MemberMapper.listMember();
	}
	
	@Override
	public String checkLogin(String id) {
		String sql = "select m_passwd from member where m_id = '" + id + "'";
		return MemberMapper.checkLogin(sql);
	}
	@Override
	   public int deleteMember(int m_num) {
	      return MemberMapper.deleteMember(m_num);
	   }
	
	@Override
	public String findId(MemberDTO dto, String searchType, HashMap<String, String> radio) {
		String sql = null;
		if(radio.get("radio1").equals("email")){
			sql = "select m_id from member where m_name = '"+dto.getM_name()+"'and "
					+ "m_email1 = '"+dto.getM_email1()+"'and m_email2 = '"+dto.getM_email2()+"'";
		}
		if(radio.get("radio1").equals("phone")){
			sql = "select m_id from member where m_name = '"+dto.getM_name()+"'and "
					+ "m_hp1 = '"+dto.getM_hp1()+"'and m_hp2 = '"+dto.getM_hp2()+"'and m_hp3 = '"+dto.getM_hp3()+"'";
		}
		
		return MemberMapper.findId(sql);
	}

	@Override
	public String findPasswd(MemberDTO dto, String searchType, HashMap<String, String> radio) {
		String sql = null;
		if(radio.get("radio1").equals("email")){
			sql = "select m_passwd from member where m_name = '"+dto.getM_name()+"'and "
					+ "m_email1 = '"+dto.getM_email1()+"'and m_email2 = '"+dto.getM_email2()+"'and "
					+ "m_id = '"+dto.getM_id()+"'";
		}
		if(radio.get("radio1").equals("phone")){
			sql = "select m_id from member where m_name = '"+dto.getM_name()+"'and "
					+ "m_hp1 = '"+dto.getM_hp1()+"'and m_hp2 = '"+dto.getM_hp2()+"'and m_hp3 = '"+dto.getM_hp3()+"'and "
					+ "m_id = '"+dto.getM_id()+"'";
		}
		
		return MemberMapper.findPasswd(sql);
	}

	@Override
	public List<MemberDTO> findMember(String searchString, String search) {
		String sql=null;
		sql = "select * from member where "+search+" = '"+searchString+"'";
		return MemberMapper.findMember(sql);
	}

	@Override
	public int updateMember(MemberDTO dto) {
		return MemberMapper.updateMember(dto);
	}
}