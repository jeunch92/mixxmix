<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../../top.jsp" %>
<body>
<div align="center">
		<table>
			<tr align="center">
				<td><h2>배송주소록관리</h2></td>
			</tr>
			<tr>
				<td>자주쓰는 주소 배송지를 관리 할 수 있습니다.</td>
			</tr>
		</table>
		<br><br>
		<table>
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
		<table width="100%" cellpadding="10">
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<tr>
				<th>주소록 고정</th>
				<th width="30%">배송지명</th>
				<th>수령인</th>
				<th>일반전화</th>
				<th>휴대전화</th>
				<th>주소</th>
				<th>수정</th>
			</tr> 
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="7"><img src="<%=request.getContextPath()%>/img/addr_no.jpg"></td>
			</tr>
			</c:if>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>fix</td>
				<td>address</td>
				<td>name</td>
				<td>call</td>
				<td>phone</td>
				<td>address</td>
				<td>update</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
		</table>
		<table align="center">
			<tr>
				<td align="right"><img src="<%=request.getContextPath()%>/img/addr_add.jpg"></td>
			</tr>
		</table>
		<br><br>
		<table>
			<tr>
				<td align="center"><img src="<%=request.getContextPath()%>/img/addr_ex.jpg" width="1100"></td>
			</tr>
		</table>
		
	</div>
</body>
<%@ include file="../../../../bottom.jsp" %>