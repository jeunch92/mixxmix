<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %> 
<div align="center">
	<h2>쿠폰 리스트</h2>
	<hr color="#D8D8D8" width="100%">
	<table border=1 cellpadding="10" cellspacing="0" bordercolor="#D8D8D8" width="100%">
		<tr>
			<td colspan="2">쿠폰 검색</td>
		</tr>
		<tr>
        	<td class="box" colspan="2" height="0.1px"></td>
     	</tr>
     	<tr>
     		<td>진행 여부</td>
     		<td>
     			<input type="radio" name="radio" value="coupon_all">전체
     			<input type="radio" name="radio" value="coupon_ing">유효한 쿠폰
     			<input type="radio" name="radio" value="coupon_stop">기간 경과된 쿠폰
     		</td>
     	</tr>
     	<tr>
     		<td>검색조건</td>
     		<td>
     			<select name="keyword">
         			<option value="cp_name">쿠폰명
        			<option value="cp_num">쿠폰번호
       				<option value="cp_code">쿠폰코드
         		</select>
         		<input type="text" name="cp_search">
         	</td>
         </tr>
	</table>
	<br>
	<h3>검색</h3>
	<br>
	<table border=1 cellpadding="10" bordercolor="#D8D8D8" width="100%">
		<tr>
			<td align="left">
				<h4>쿠폰리스트</h4> ·유효쿠폰 : ${cp_ing_count}개  ·기간이 지난 쿠폰 : ${cp_end_count}개
			</td>
		</tr>
	</table>
	<br>
	<table border=1 cellpadding="10" cellspacing="0" bordercolor="#D8D8D8" width="100%">
		<tr align="center"> 
			<td>번호</td>
			<td>쿠폰명</td>
			<td>쿠폰코드</td>
			<td>할인적용</td>
			<td>유효기간</td>
			<td>지급 수/등록 수</td>
			<td>사용 수</td>
			<td>사용여부</td>
			<td>관리</td>
		</tr>
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="9">등록 된 쿠폰이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr align="center">
				<td>cp_num</td>
				<td>cp_name</td>
				<td>cp_code</td>
				<td>cp_price</td>
				<td>cp_date</td>
				<td>cp_re_give</td>
				<td>cp_usecount</td>
				<td>cp_use</td>
				<td>수정/삭제</td>
			</tr> 
		</c:forEach>
	</table>	
	</div>
<%@ include file="../bottom.jsp" %>