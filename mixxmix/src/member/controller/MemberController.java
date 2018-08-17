package member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Scanner;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.dao.MemberDAO;
import member.dto.MemberDTO;
import member.mybatis.MemberMapper;
import product.dto.CategoryDTO;
import product.dto.JoayoDTO;
import product.dto.ProductDTO;
import product.mybatis.ProductMapper;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@RequestMapping(value="/main.do")
	public ModelAndView main(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		List<CategoryDTO> cateList = ProductMapper.listCategory();
	      List<ProductDTO> prodList = ProductMapper.listProductAll();
	      List<JoayoDTO> joayoList = ProductMapper.listJoayo();
	      req.setAttribute("joayoList", joayoList);
	      req.getSession().setAttribute("prodList", prodList);
	      req.getSession().setAttribute("cateList", cateList);
	      
		return new ModelAndView("redirect:main.jsp");
	}
	
	@RequestMapping(value="/member_insert.do", method=RequestMethod.GET)
	public String insertMember(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		req.setAttribute("list", MemberMapper.getList());
		return "login/join";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		List<CategoryDTO> cateList = ProductMapper.listCategory();
        List<ProductDTO> prodList = ProductMapper.listProduct();
        req.getSession().setAttribute("prodList", prodList);
        req.getSession().setAttribute("cateList", cateList);
		return "login/login";
	}
	
	@RequestMapping(value="/member_insert.do" ,method=RequestMethod.POST)
	public ModelAndView insertProMember(HttpServletRequest req, @ModelAttribute MemberDTO dto, BindingResult result) {
		//@ModelAttribute�� ��������
		/*if(result.hasErrors()) { //������ �߻��ȴٸ� ���ε� ����Ʈ ó��~ int�� null�� ����
			dto.setM_num(0);
		}*/
		int res = memberDAO.insertMember(dto);
		return new ModelAndView("redirect:login.do");
	}
	
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	   public ModelAndView memberLogin(HttpServletRequest req, HttpServletResponse resp) {
	      String id = (String)req.getParameter("m_id");
	      String passwd = (String)req.getParameter("m_passwd");
	      String saveId = req.getParameter("saveId");
	      
	      String db_passwd = memberDAO.checkLogin(id);
	      
	      if(db_passwd!=null) { 
	         if(db_passwd.equals(passwd)) {
	            if(id.equals("admin")) {
	               req.getSession().setAttribute("admin_id", id);
	               req.getSession().setAttribute("admin_passwd", passwd);
	               req.setAttribute("msg", id+"�����ڴ��� �α����Ͽ����ϴ�.");
	            }else {
	               
	               req.getSession().setAttribute("mbid", id);
	               req.getSession().setAttribute("mbpw", passwd);
	               req.setAttribute("msg", id+"���� �α��� �Ǿ����ϴ�!!");
	            }
	            Cookie ck = new Cookie("saveId", id);
	            if(saveId==null) {
	               ck.setMaxAge(0);
	            }else {
	               ck.setMaxAge(7*24*60*60);
	            }
	            resp.addCookie(ck);
	         }else {
	            req.setAttribute("msg", "��й�ȣ�� Ʋ�Ƚ��ϴ�. �ٽ� �Է��� �ּ���!!");
	         }
	      }else {
	         req.setAttribute("msg", "���̵� Ʋ�Ƚ��ϴ�. �ٽ� �Է��� �ּ���!!");
	      }
	      List<CategoryDTO> list = ProductMapper.listCategory();
	         req.getSession().setAttribute("cateList", list);
	      return new ModelAndView("forward:main.jsp");
	   }
	
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public ModelAndView memberLogout(HttpServletRequest req) {
		req.getSession().invalidate();
		req.setAttribute("msg", "�α׾ƿ� �Ǿ����ϴ�!!");
		
		return new ModelAndView("forward:main.jsp");
	}
	
	@RequestMapping(value="/find_id.do", method=RequestMethod.GET)
	public String findId(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		return "login/find_id";
	}
	
	@RequestMapping(value="/find_passwd_info.do", method=RequestMethod.GET)
	public String findPasswd(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		return "login/find_passwd_info";
	}
	
	@RequestMapping(value="/my_index.do", method=RequestMethod.GET)
	public String myIndex(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		return "mypage/my_index";
	}

	@RequestMapping(value="/member_list.do")
	public String listMember(HttpServletRequest req) {
		List<MemberDTO> memberList = memberDAO.listMember();
		req.setAttribute("list", memberList);
		return "admin/member/member_list";
	}
	
	@RequestMapping(value="/member_find.do", method=RequestMethod.POST)
	public String findMember(HttpServletRequest req) {
		String searchString = req.getParameter("searchString");
		String search = req.getParameter("search");
		List<MemberDTO> findList = memberDAO.findMember(searchString, search);
		req.setAttribute("find", findList);
		return "admin/member/member_find";
	}
	
	@RequestMapping(value="/coupon_list.do")
	public String listCoupon(HttpServletRequest req) {
		return "admin/coupon/coupon_list";
	}
	
	@RequestMapping(value="/event_list.do")
	public String listEvent(HttpServletRequest req) {
		return "admin/event/event_list";
	}
	
	@RequestMapping(value="/member_delete.do",method=RequestMethod.GET)
	public ModelAndView deleteProMember(HttpServletRequest req, HttpServletResponse resp, @ModelAttribute MemberDTO dto){//@ModelAttribute = ���붧�� ��������
		String mode = req.getParameter("mode");//��𿡼� �Ѿ���°��� Ȯ���Ϸ���(���������������� �ϴ� ��������, ȸ��Ż������)-mode���� del�̸� ȸ��Ż��
		int m_num=Integer.parseInt(req.getParameter("num"));
		int res = memberDAO.deleteMember(m_num);
		String url = null;
		if(mode.equals("del")) {
			req.getSession().invalidate();//�α׾ƿ� ��Ű����
			Cookie ck = new Cookie("saveId", null);
            ck.setMaxAge(0);//��Ű ����
            resp.addCookie(ck);
			url = "redirect:main.do";
		}else if(mode.equals("adminDel")) {
			url = "redirect:member_list.do";
		}
		return new ModelAndView(url);
		//return new ModelAndView("redirect:member_list.do");
	}
	
	@RequestMapping(value="/find_id.do", method=RequestMethod.POST)//�ϴ� ����ȸ��ã�⸸...
	public String findIdPro(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		String searchType = req.getParameter("searchType");
		String radio1 = req.getParameter("radio1");
		String radio2 = req.getParameter("radio2");
		String radio3 = req.getParameter("radio3");
		String radio4 = req.getParameter("radio4");
		HashMap<String, String> radio = new HashMap<String, String>();
		radio.put("radio1", radio1);radio.put("radio2", radio2);
		radio.put("radio3", radio3);radio.put("radio4", radio4);
		String m_email = req.getParameter("m_email");
		System.out.println(m_email+"%%");
		try {
			if(!m_email.equals("")) {
				Scanner sc = new Scanner(m_email).useDelimiter("\\s*@\\s*");
				dto.setM_email1(sc.next());
				dto.setM_email2(sc.next());
			}
		}catch(NoSuchElementException e) {}
		String db_id = memberDAO.findId(dto, searchType, radio);
		System.out.println(db_id+"^^^");
		String url;
		if(db_id==null || db_id.equals("null")) {
			req.setAttribute("msg", "�����ϴ� id�� �����ϴ�. ȸ�������� ���ּ���!!");
			url = "login/join";
		}else {
			req.setAttribute("msg", "ȸ������ id�� "+db_id+" �Դϴ�. �α����� ���ּ���!!");
			url = "login/login";
		}
		return url;
	}
	
	@RequestMapping(value="/find_passwd_info.do", method=RequestMethod.POST)//�ϴ� ����ȸ��ã�⸸...
	public String findPasswdPro(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		String searchType = req.getParameter("searchType");
		String radio1 = req.getParameter("radio1");
		String radio2 = req.getParameter("radio2");
		String radio3 = req.getParameter("radio3");
		String radio4 = req.getParameter("radio4");
		HashMap<String, String> radio = new HashMap<String, String>();
		radio.put("radio1", radio1);radio.put("radio2", radio2);
		radio.put("radio3", radio3);radio.put("radio4", radio4);
		String m_email = req.getParameter("m_email");
		System.out.println(m_email+"%%");
		try {
			if(!m_email.equals("")) {
				Scanner sc = new Scanner(m_email).useDelimiter("\\s*@\\s*");
				dto.setM_email1(sc.next());
				dto.setM_email2(sc.next());
			}
		}catch(NoSuchElementException e) {}
		String db_passwd = memberDAO.findPasswd(dto, searchType, radio);
		System.out.println(db_passwd+"^^^");
		String url;
		if(db_passwd==null || db_passwd.equals("null")) {
			req.setAttribute("msg", "ȸ������ ����ġ!! �ٽ� �Է��� �ּ���!!");
			url = "login/find_passwd_info";
		}else {
			req.setAttribute("msg", "ȸ������ ��й�ȣ�� "+db_passwd+" �Դϴ�. �α����� ���ּ���!!");
			url = "login/login";
		}
		return url;
	}
	
	@RequestMapping(value="/order_list.do", method=RequestMethod.GET)
	public String order_list(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		return "mypage/order/order_list";
	}
	@RequestMapping(value="/my_wish_list.do", method=RequestMethod.GET)
	public String my_wish_list(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		return "mypage/my_wish_list";
	}
	@RequestMapping(value="/my_pointList.do", method=RequestMethod.GET)
	public String my_pointList(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		return "mypage/my_pointList";
	}
	@RequestMapping(value="/my_coupon.do", method=RequestMethod.GET)
	public String my_coupon(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		return "mypage/my_coupon";
	}
	@RequestMapping(value="/addr_list.do", method=RequestMethod.GET)
	public String addr_list(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		return "mypage/addr/list";
	}
	@RequestMapping(value="/modify.do", method=RequestMethod.GET)
	public String modify(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		String id = (String)req.getSession().getAttribute("m_id");
		List<MemberDTO> memberInfo = memberDAO.isId(id);
		req.setAttribute("memberInfo", memberInfo);
		return "login/modify";
	}
	
	@RequestMapping(value="/modify_update.do" ,method=RequestMethod.POST)
	public ModelAndView modifyUpdate(HttpServletRequest req, @ModelAttribute MemberDTO dto, BindingResult result) {
		int res = memberDAO.updateMember(dto);
		req.setAttribute("msg", "ȸ������ ������ �Ϸ�Ǿ����ϴ�.");
		return new ModelAndView("forward:main.jsp");
	}
	
}
