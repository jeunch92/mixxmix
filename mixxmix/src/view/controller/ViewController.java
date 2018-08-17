package view.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import color.dto.ColorDTO;
import member.dto.MemberDTO;
import member.mybatis.MemberMapper;
import product.dao.ProductDAO;
import product.dto.JoayoDTO;
import product.dto.ProductDTO;
import product.mybatis.ProductMapper;

@Controller
public class ViewController {
	@Autowired
	private ProductDAO productDAO;
	
    @RequestMapping(value="/categoryView.view",method=RequestMethod.GET)
    public ModelAndView categoryView(HttpServletRequest req, @ModelAttribute MemberDTO dto){//@ModelAttribute = 보통때는 생략가능
      List<JoayoDTO> joayoList = ProductMapper.listJoayo();
      req.setAttribute("joayoList", joayoList);
      String mbid = (String)req.getSession().getAttribute("mbid");
      req.getSession().setAttribute("mbid", mbid);
      String c_v_mode = req.getParameter("c_v_mode");
      List<ProductDTO> prodListByCate = null; 
      if(c_v_mode.equals("best")) {
         prodListByCate = ProductMapper.listProductByCate_best(req.getParameter("c_num"));
      }else if(c_v_mode.equals("new")){
         prodListByCate = ProductMapper.listProductByCate_new(req.getParameter("c_num"));
      }else if(c_v_mode.equals("lowPrice")){
         prodListByCate = ProductMapper.listProductByCate_low(req.getParameter("c_num"));
      }else if(c_v_mode.equals("highPrice")){
         prodListByCate = ProductMapper.listProductByCate_high(req.getParameter("c_num"));
      }
      req.setAttribute("prodListByCate", prodListByCate);
      req.setAttribute("c_num", Integer.parseInt(req.getParameter("c_num")));
      return new ModelAndView("view/categoryView");
    }
   
    @RequestMapping(value="/product_content.view")
    public ModelAndView contentProduct( HttpServletRequest req) {
       String p_name = req.getParameter("name");
       String p_num = req.getParameter("num");
       ProductDTO dto = ProductMapper.getProduct(Integer.parseInt(p_num));//상품상세보기 페이지에 필요한 상품정보(가격,이름,코드,소재,이미지,브랜드)
       List<String> onlyColor = ProductMapper.onlyColor(dto.getP_num());//상품의 컬러만 들어있는 리스트
       List<ColorDTO> detailList = ProductMapper.getColorList(dto.getP_num());//전체 다 들어있는 리스트
       req.setAttribute("onlyColor", onlyColor);
       req.setAttribute("detailList", detailList);
       return  new ModelAndView("view/productView","getProduct", dto);
    }
   
   @RequestMapping(value="/color.view",method=RequestMethod.POST)
   @ResponseBody
    public String color(HttpServletRequest req){//@ModelAttribute = 보통때는 생략가능
      String col_name = req.getParameter("col_name");
      String p_num = req.getParameter("p_num");
      List<ColorDTO> detail = ProductMapper.getDetail(p_num, col_name);
      JSONArray array = new JSONArray();
      for (int i = 0; i < detail.size(); i++) {
         JSONObject obj = new JSONObject();
         obj.put("col_size", detail.get(i).getCol_size());
         obj.put("col_stock", detail.get(i).getCol_stock());
         obj.put("col_name", detail.get(i).getCol_name());
         array.put(obj);
     }
      String msg = array.toString();
      return msg;
    }
   
}