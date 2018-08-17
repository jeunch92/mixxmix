package product.controller;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import color.dto.ColorDTO;
import member.dto.MemberDTO;

import java.io.File;
import java.io.IOException;
import java.util.*;

import product.dao.*;
import product.dto.*;
import product.mybatis.ProductMapper;


@Controller
public class ProductController {

	@Autowired
	private CategoryDAO CategoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	
	@RequestMapping(value="/product_category_insert.pro" , method=RequestMethod.POST)
	public ModelAndView Cate_insert(HttpServletRequest req, @ModelAttribute CategoryDTO dto) {
		int res = ProductMapper.insertCategory(dto);
		return new ModelAndView("redirect:product_category_list.pro");	
	}
	
	@RequestMapping(value="/product_category_list.pro")
	public String cateList(HttpServletRequest req) { 
		List<CategoryDTO> productList = CategoryDAO.listCategory();
		req.setAttribute("c_list", productList);
		return "admin/product/product_cate_view";
	}
	
	@RequestMapping(value="/product_category_insert.pro" ,method=RequestMethod.GET)
	public String cateInsertForm(HttpServletRequest req, @ModelAttribute CategoryDTO dto) {
		return "admin/product/product_cate_insert";
	}
	
	@RequestMapping(value="/product_product_insert.pro" ,method=RequestMethod.GET)
	   public String prodInsertForm(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
	      List<CategoryDTO> list = CategoryDAO.listCategory();
	      req.setAttribute("cate_list", list);
	      return "admin/product/product_product_insert";
	   }
	
	@RequestMapping(value="/product_product_insert.pro" ,method=RequestMethod.POST)
    public ModelAndView insertProduct(MultipartHttpServletRequest req, @ModelAttribute ProductDTO dto/*, @ModelAttribute ColorDTO colorDTO*/, BindingResult result) {
          Map<String, MultipartFile> files = req.getFileMap();
           CommonsMultipartFile cmf = (CommonsMultipartFile) files.get("p_img");
           String path ="D:\\spring\\study\\mixxmix\\WebContent\\images\\"+cmf.getOriginalFilename();
           //C:\\Spring_SIm\\workspace\\mixxmix\\WebContent\\images\\
          //D:\\spring\\study\\mixxmix\\WebContent\\images\\
           File f = new File(path);
           if(result.hasErrors()) {
              dto.setP_img("에러가있어서스트링을집어넣었소");
           }
           dto.setP_img(f.getName());
           productDAO.insertProduct(dto);
           // 파일 업로드 처리 완료.
           try {
             cmf.transferTo(f);
          } catch (IllegalStateException e) {
             e.printStackTrace();
          } catch (IOException e) {
             e.printStackTrace();
          }
           int res = 0;
           int num = ProductMapper.getP_num(dto.getP_code());
           System.out.println(num);
           System.out.println(dto.getP_code()+"dlrjjrj");
           String text = req.getParameter("text");
              String info[] = text.split("\n");
              for(String info2 : info) {
                ColorDTO colorDTO = new ColorDTO();
                 Scanner sc = new Scanner(info2).useDelimiter("\\s*/\\s*");
                 String color = sc.next().trim();
                 String size = sc.next().trim();
                 String stock = sc.next().trim();
                 colorDTO.setP_num(num);
                 colorDTO.setCol_name(color);
                 colorDTO.setCol_size(size);
                 colorDTO.setCol_stock(Integer.parseInt(stock));
                   
                 int check = productDAO.checkStock(colorDTO);
                 
                 if(check>0) {
                    res = productDAO.addInsertProduct(colorDTO);//기존에 있던 color에 추가하는 메소드
                 }else {
                    res = ProductMapper.insertColor(colorDTO);//새롭게 color를 추가하는 메소드
                 }
            //  }
           }
           
           if(res>0) {
              req.setAttribute("msg", "상품등록 성공!!");
           }else {
              req.setAttribute("msg", "상품등록 실패!!");
           }
       //int res = productDAO.insertProduct(dto);
       return new ModelAndView("redirect:product_list.pro");
    }
	
	@RequestMapping(value="/product_list.pro")
	public String listProduct(HttpServletRequest req, @ModelAttribute CategoryDTO dto) {
		List<ProductDTO> productList = productDAO.listProduct();
		req.setAttribute("list", productList);
		return "admin/product/product_list";
	}
	
	/*@RequestMapping(value="/product_content.pro")
	public ModelAndView contentProduct(@RequestParam int num, HttpServletRequest req) {
		ProductDTO dto = ProductMapper.getProduct(num);
		return  new ModelAndView("admin/product/product_content","getProduct", dto);
	}*/
	
	@RequestMapping(value="/365basic.pro", method=RequestMethod.GET)
	public String basic(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/365basic";
	}
	@RequestMapping(value="/heartclub.pro", method=RequestMethod.GET)
	public String heartclub(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/heartclub";
	}
	@RequestMapping(value="/hide.pro", method=RequestMethod.GET)
	public String hide(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/hide";
	}
	@RequestMapping(value="/lonelyclub.pro", method=RequestMethod.GET)
	public String lonelyclub(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/lonelyclub";
	}
	@RequestMapping(value="/matiere.pro", method=RequestMethod.GET)
	public String matiere(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/matiere";
	}
	@RequestMapping(value="/pastpassion.pro", method=RequestMethod.GET)
	public String pastpassion(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/pastpassion";
	}
	@RequestMapping(value="/seanlip.pro", method=RequestMethod.GET)
	public String seanlip(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/seanlip";
	}
	@RequestMapping(value="/seek.pro", method=RequestMethod.GET)
	public String seek(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/seek";
	}
	@RequestMapping(value="/ulysses.pro", method=RequestMethod.GET)
	public String ulysses(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/ulysses";
	}
	@RequestMapping(value="/untitle8.pro", method=RequestMethod.GET)
	public String untitle8(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return "brand/untitle8";
	}
	//2018.08.06
	@RequestMapping(value="/brand_insert.pro" ,method=RequestMethod.GET)
	public String brandInsertForm(HttpServletRequest req, @ModelAttribute CategoryDTO dto) {
		return "admin/brand/brand";
	}
	
	@RequestMapping(value="/product_product_delete.pro" ,method=RequestMethod.GET)
    public ModelAndView prodDeleteForm(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
    int p_num = Integer.parseInt(req.getParameter("num"));
    int res = productDAO.deleteProduct(p_num);
     return new ModelAndView("redirect:product_list.pro");
    }
	
	@RequestMapping(value="/like.pro", method=RequestMethod.POST)
	   @ResponseBody 
	   public String like (HttpServletRequest req, HttpServletResponse resp, @ModelAttribute JoayoDTO dto) {
	     /* JSONObject obj = new JSONObject();*/      
	      int likeSu = 0;
	      String mbid = (String)req.getSession().getAttribute("mbid");
	      dto.setL_mem_id(mbid);
	      boolean check = ProductMapper.Prevent_duplication(dto);
	      
//	      HashMap<String, Integer> status = new HashMap<>(); 
	      String status;
	      if (check) { // 좋아요 이미 누름
	         // 테이블에서 해당 행을 삭제( 추가) 한다.
	        
	         ProductMapper.likeTB_delete(dto);
	        
	         // status, like count 를 json으로 전송한다.
//	         status.put("status", 404);
	         status=String.valueOf(404);
	      } else { //좋아요 안누름 
	         // 테이블에서 해당 행을 삭제( 추가) 한다.
	         
	         ProductMapper.likeTB_insert(dto); 
	         
	         // status, like count 를 json으로 전송한다.
//	         status.put("status", 200);
	         status=String.valueOf(200);
	      } 
	      
	      // 테이블을 게시글 seq 로 count(*)
	   /*   like_count = comService.getLikeCount(seq);
	      status.put("like_count", like_count);*/
//	      obj.put("status", status);
	      return status;
//	      return status.toJSONString();
	      
	   } 
}
