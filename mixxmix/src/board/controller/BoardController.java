package board.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import board.dto.FAQDTO;
import board.dto.BoardDTO;
import board.mybatis.BoardMapper;

@Controller
public class BoardController {
   
   @RequestMapping(value="notice.board",method=RequestMethod.GET)
   public String noticeBoard(HttpServletRequest req) {
      List<BoardDTO> list = BoardMapper.listBoard();
      req.setAttribute("list", list);
      return "board/notice/noticeList";
   }
   
   @RequestMapping(value="FAQ.board",method=RequestMethod.GET)
   public ModelAndView FAQBoard(HttpServletRequest req) {
      List<FAQDTO> list = BoardMapper.listFAQ();
      req.setAttribute("list", list);
      return new ModelAndView("board/FAQ/FAQList");
   }
      
   @RequestMapping(value="noticePro.board",method=RequestMethod.POST)
   public ModelAndView insertBoard(BoardDTO dto, HttpServletRequest req/*, BindingResult result*/) {
      /*if(result.hasErrors()) {
         System.out.println("일단 에러있는 곳으로 들어옴");
         dto.setNum(0);
         dto.setRe_step(0);
         dto.setRe_level(0);
      }*/
      dto.setNum(0);
      BoardMapper.insertBoard(dto);
      return new ModelAndView("redirect:notice.board");
   }
   
   @RequestMapping(value="FAQPro.board",method=RequestMethod.POST)
   public ModelAndView insertFAQ(FAQDTO dto, HttpServletRequest req) {
      dto.setNum(0);
      BoardMapper.insertFAQ(dto);
      return new ModelAndView("redirect:FAQ.board");
   }
   
   @RequestMapping(value="noticeForm.board",method=RequestMethod.GET)
   public String writeBoard() {
      return "board/notice/noticeForm";
   }
   
   @RequestMapping(value="FAQForm.board",method=RequestMethod.GET)
   public String writeFAQ() {
      return "board/FAQ/FAQForm";
   }
   
   @RequestMapping(value="noticeContent.board",method=RequestMethod.GET)
   public String contentBoard(HttpServletRequest req) {
      BoardMapper.getReadCount(Integer.parseInt(req.getParameter("num")));
      BoardDTO dto = BoardMapper.getBoard(Integer.parseInt(req.getParameter("num")));
      req.setAttribute("dto", dto);
      return "board/notice/noticeContent";
   }
   
   @RequestMapping(value="FAQContent.board",method=RequestMethod.GET)
   public String contentFAQ(HttpServletRequest req) {
      BoardMapper.getReadCount_F(Integer.parseInt(req.getParameter("num")));
      FAQDTO dto = BoardMapper.getFAQ(Integer.parseInt(req.getParameter("num")));
      req.setAttribute("dto", dto);
      return "board/FAQ/FAQContent";
   }
   
   @RequestMapping(value="updateForm.board",method=RequestMethod.GET)
   public String updateForm(HttpServletRequest req) {
      BoardDTO dto = BoardMapper.getBoard(Integer.parseInt(req.getParameter("num")));
      req.setAttribute("dto", dto);
      return "board/notice/updateForm";
   }
   
   @RequestMapping(value="FAQupdateForm.board",method=RequestMethod.GET)
   public String FAQupdateForm(HttpServletRequest req) {
      FAQDTO dto = BoardMapper.getFAQ(Integer.parseInt(req.getParameter("num")));
      req.setAttribute("dto", dto);
      return "board/FAQ/FAQupdateForm";
   }
   
   @RequestMapping(value="updateBoard.board",method=RequestMethod.POST)
   public ModelAndView updateBoard(HttpServletRequest req,BoardDTO dto) {
      BoardMapper.updateBoard(dto);
      return new ModelAndView("redirect:notice.board");
   }
   
   @RequestMapping(value="FAQupdateBoard.board",method=RequestMethod.POST)
   public ModelAndView FAQupdateBoard(HttpServletRequest req,FAQDTO dto) {
      BoardMapper.FAQupdateBoard(dto);
      return new ModelAndView("redirect:FAQ.board");
   }
   
   @RequestMapping(value="deleteBoard.board",method=RequestMethod.GET)
   public ModelAndView deleteBoard(HttpServletRequest req) {
      BoardMapper.deleteBoard(Integer.parseInt(req.getParameter("num")));
      return new ModelAndView("redirect:notice.board");
   }
   
   @RequestMapping(value="deleteFAQ.board",method=RequestMethod.GET)
   public ModelAndView deleteFAQ(HttpServletRequest req) {
      BoardMapper.deleteFAQ(Integer.parseInt(req.getParameter("num")));
      return new ModelAndView("redirect:FAQ.board");
   }
}






