<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../top.jsp" %>
<body>
<div align="center">
		<table width="100%">
			<tr align="center">
				<td><h2>적립금</h2></td>
			</tr>
			<tr align="center">
				<td>고객님의 사용가능 적립금 금액 입니다.</td>
			</tr>
		</table>
		<br><br>
		<table width="100%">
			<tr align="center">
			<td>
				<a href="my_index.do">마이쇼핑</a> | 
				<a href="order_list.do">주문내역</a> | 
				<a href="">회원정보</a> | 
				<a href="my_wish_list.do">관심상품</a> | 
				<a href="my_pointList.do">적립금</a> | 
				<a href="my_coupon.do">쿠폰</a> | 
				<a href="">게시물관리</a> | 
				<a href="addr_list.do">배송주소록</a> | 
			</td>
			</tr>
		</table>
		<br>
	<table border=1 cellpadding="30" bordercolor="#D8D8D8" width="100%" height="100">
		<tr>
			<td>
				·총 적립금	<br><br>
				·사용된 적립금	<br><br>
				·환불예정 적립금
			</td>
			<td align="right">
				${point}원<br><br>
				${point}원<br><br>
				${point}원
			</td>
			<td>
				·사용가능 적립금<br><br>
				·미가용 적립금<br><br>
				　
			</td>
			<td align="right">
				${money}원<br><br>
				${money}원<br><br>
				　
			</td>
		</tr>
	</table>
	<br>
	<table width="100%">
		<tr align="left"><td>·적립내역보기</td></tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<tr>
			<td>주문날짜</td>
			<td>적립금</td>
			<td>관련주문</td>
			<td>내용</td>
		</tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="4"><img src="<%=request.getContextPath()%>/img/point.jpg"></td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>date</td>
				<td>point</td>
				<td>null</td>
				<td>content</td>
			</tr>
		</c:forEach>
	</table>
		<hr color="#D8D8D8" width="100%">
		<h4>◀ 1 ▶</h4>
	<br><br><br>
	<table width="100%">
		<tr align="left"><td>·미가용적립내역보기</td></tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<tr>
			<td>주문날짜</td>
			<td>적립금</td>
			<td>관련주문</td>
			<td>사용가능예정일</td>
			<td>내용</td>
		</tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="5"><img src="<%=request.getContextPath()%>/img/point.jpg"></td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>date</td>
				<td>point</td>
				<td>null</td>
				<td>usedate</td>
				<td>content</td>
			</tr>
		</c:forEach>
	</table>
		<hr color="#D8D8D8" width="100%">
		<h4>◀ 1 ▶</h4>
	<br><br><br>
	<table width="100%">
		<tr align="left"><td>·미가용쿠폰/회원등급적립내역</td></tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<tr>
			<td>주문날짜</td>
			<td>적립금</td>
			<td>관련주문</td>
			<td>내용</td>
		</tr>
	</table>
		<hr color="#D8D8D8" width="100%"> 
	<table width="100%">
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="4"><img src="<%=request.getContextPath()%>/img/point.jpg"></td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>date</td>
				<td>point</td>
				<td>null</td>
				<td>content</td>
			</tr>
		</c:forEach>
	</table>
		<hr color="#D8D8D8" width="100%">
		<br><br>
		<h4>◀ 1 ▶</h4>
	<table>
		<tr>
			<td align="center">
				<img src="<%=request.getContextPath()%>/img/point_a.jpg" width="1100">
			</td>
		</tr>
	</table>
</div>
</body>
<%@ include file="../../../bottom.jsp" %>