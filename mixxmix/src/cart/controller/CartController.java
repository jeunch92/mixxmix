package cart.controller;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import board.dto.BoardDTO;
import board.mybatis.BoardMapper;
import member.dto.MemberDTO;
import product.dto.CategoryDTO;
import product.dto.ProductDTO;

import java.io.File;
import java.io.IOException; 
import java.util.*;


import cart.dto.*;
import cart.mybatis.CartMapper;


@Controller
public class CartController {
	@RequestMapping(value="cart_insert.cart",method=RequestMethod.POST)
	public ModelAndView insertCart(@ModelAttribute CartDTO dto, HttpServletRequest req/*, BindingResult result*/) {	
		String m_id = req.getParameter("m_id");
	      String p_point = req.getParameter("p_point");
	      String p_name = req.getParameter("p_name");
	      String p_img = req.getParameter("p_img");
	      String p_price = req.getParameter("p_price");
	      String p_color = req.getParameter("p_color");
	      String p_size = req.getParameter("p_size");
	      String p_count = req.getParameter("p_count");
	      System.out.println();
	      System.out.println("db에 저장될 카우ㄴ트 : "+dto.getP_count());
	      System.out.println(p_name);
	      System.out.println(p_color);
	      System.out.println(p_size);
	      System.out.println();
	      System.out.println();
	      System.out.println(m_id+"###############");
	      System.out.println(p_point+"###############");
	      System.out.println("@@@@@@@@@@@@@@@@@@@@@@@   그냥카운트        "+p_count+"          ###############");
	      
	      int selectCount = CartMapper.selectCount(m_id,p_name,p_size,p_color);
	      
	      if(selectCount>0) {
	      int dbCount = CartMapper.getCount(m_id,p_name,p_size,p_color);
	      
	      System.out.println("제발 저장된거 뽑아주라 : "+dbCount);
	      
	      List<Object> res = null;
	            res = CartMapper.countCart(p_name,p_img,p_size,p_color);
	            
	      System.out.println(res.get(0)+"#$!@$!%##############");
	      
	      String count =res.get(0).toString();
	      
	      System.out.println("##############@@@@@@@@@@@@          "+count+"        #@$!@$!#%^#%^@#%#@%#$#$@%0");
	         CartMapper.updateCart(dto,dbCount);
	      res.clear();
	      req.setAttribute("m_id", m_id);
	      return new ModelAndView("forward:cartView.cart");
	      }else {
	         
	         List<Object> res = null;
	               res = CartMapper.countCart(p_name,p_img,p_size,p_color);
	               
	         System.out.println(res.get(0)+"#$!@$!%##############");
	         
	         String count =res.get(0).toString();
	         
	         System.out.println("##############@@@@@@@@@@@@          "+count+"        #@$!@$!#%^#%^@#%#@%#$#$@%0");
	         CartMapper.insertCart(dto);
	         res.clear();
	         req.setAttribute("m_id", m_id);
	         return new ModelAndView("forward:cartView.cart");
	         
	      }
	}
	@RequestMapping(value="/cartView.cart")
	public String cartList(HttpServletRequest req) { 
		String p_img = req.getParameter("p_img");
		String m_id = (String) req.getParameter("m_id");
		System.out.println(m_id+"@@@@@@@@@@@@@@@@@@@@@"+p_img);
		List<CartDTO> cartList = CartMapper.listCart(m_id);
		req.setAttribute("cartlist",cartList);
		
		return "view/cartView";
	}
	@RequestMapping(value="/cart_delete.cart" ,method=RequestMethod.POST)
    public ModelAndView prodDeleteForm(HttpServletRequest req) {
		String p_name = req.getParameter("p_name");
		String p_color = req.getParameter("p_color");
		String p_size = req.getParameter("p_size");
		String m_id = (String) req.getParameter("m_id");
		String p_count = req.getParameter("num");
		req.setAttribute("m_id", m_id);
		System.out.println(p_name+"@@@@@@"+p_color+"###########"+p_size+"$$$$$$$$$$"+p_count);
		
		CartMapper.deleteCart(p_name,p_color,p_size);
		
     return new ModelAndView("forward:cartView.cart");
    }
}
