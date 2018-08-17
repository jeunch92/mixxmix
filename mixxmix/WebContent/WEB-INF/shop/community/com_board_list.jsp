<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../../top.jsp" %>
<div align="center"><h3>게시물관리</h3><br>
공지사항 | 자주 묻는 질문 | 이벤트
</div>
<div align="center">
   <table width="100%">
      <tr>
         <td align="left">
         <select name="" >
            <option value="">작성 일자별
            <option value="">분류별
         </select>
         </td>
         <td align="right" colspan="5">
         <select>
            <option>일주일
            <option>한달
            <option>세달
            <option>전체
         </select>
         <select>
            <option>제목
            <option>내용
            <option>아이디
            <option>글쓴이
         </select>
         <input type="text">  <input type="button" value="검색">         
         </td>
      </tr>   
      <tr align="center">
         <td colspan="6">
            <hr color="slategray" width="100%">
         </td>
      </tr>
      <tr>
         <th>번호</th>
         <th width="10%">분류</th>
         <th width="70%">제목</th>
         <th width="5%">작성자</th>
         <th width="5%">작성일</th>
         <th width="5%">조회</th>
      </tr>
      <tr>
         <td colspan="6">
            <hr color="slategray" width="100%">
         </td>
      </tr>
      <tr align="center">
         <td colspan="6">게시물이 없떠용~</td>
         <!-- <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td> -->
      </tr>
      <tr>
         <td colspan="6">
            <hr color="slategray" width="100%">
         </td>
      </tr>
   </table>
</div>
<%@ include file="../../../bottom.jsp"%>