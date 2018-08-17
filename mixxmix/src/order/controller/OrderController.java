package order.controller;

import java.util.List;

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

import member.dto.MemberDTO;
import order.dao.OrderDAO;
import product.dto.CategoryDTO;
import product.dto.ProductDTO;
import product.mybatis.ProductMapper;

@Controller
public class OrderController {
	/*@Autowired
	private OrderDAO orderDAO;*/
	
	@RequestMapping(value="/order_cancel_list.order")
	public String listCancel(HttpServletRequest req) {
		return "admin/order/order_cancel_list";
	}
	
	@RequestMapping(value="/creditView.order", method=RequestMethod.POST)
	public String creditView(HttpServletRequest req) {
		return "view/creditView";
	}
	
	@RequestMapping(value="/order_change_list.order")
	public String listChange(HttpServletRequest req) {
		return "admin/order/order_change_list";
	}
	
	@RequestMapping(value="/order_delivery_ing.order")
	public String listDelivery_ing(HttpServletRequest req) {
		return "admin/order/order_delivery_ing";
	}
	
	@RequestMapping(value="/order_delivery_ok.order")
	public String listDelivery_ok(HttpServletRequest req) {
		return "admin/order/order_delivery_ok";
	}
	
	@RequestMapping(value="/order_delivery_ready.order")
	public String listDelivery_ready(HttpServletRequest req) {
		return "admin/order/order_delivery_ready";
	}
	
	@RequestMapping(value="/order_list_all.order")
	public String listAll(HttpServletRequest req) {
		return "admin/order/order_list_all";
	}
	
	@RequestMapping(value="/order_list.order")
	public String order_list(HttpServletRequest req) {
		return "mypage/order/order_list";
	}
	
	@RequestMapping(value="/order_main.order")
	public String orderMain(HttpServletRequest req) {
		return "admin/order/order_main";
	}
	
	@RequestMapping(value="/order_not_diposal_list.order")
	public String listNot_diposal(HttpServletRequest req) {
		return "admin/order/order_not_diposal_list";
	}
	
	@RequestMapping(value="/order_pay_ok.order")
	public String listPay_ok(HttpServletRequest req) {
		return "admin/order/order_pay_ok";
	}
	
	@RequestMapping(value="/order_pay_wait.order")
	public String listPay_wait(HttpServletRequest req) {
		return "admin/order/order_pay_wait";
	}
	
	@RequestMapping(value="/order_refund_list.order")
	public String listRefund(HttpServletRequest req) {
		return "admin/order/order_refund_list";
	}
	
	@RequestMapping(value="/order_return_list.order")
	public String listReturn(HttpServletRequest req) {
		return "admin/order/order_return_list";
	}
	
	@RequestMapping(value="/cartView.order")
	public ModelAndView cartView(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return new ModelAndView("view/cartView");
	}
	
	@RequestMapping(value="/orderView.order")
	public ModelAndView orderView(HttpServletRequest req, @ModelAttribute ProductDTO dto) {
		return new ModelAndView("view/orderView");
	}
	

}
