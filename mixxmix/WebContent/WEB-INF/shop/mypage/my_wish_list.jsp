<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../top.jsp" %>
<body>
	<div align="center">
		<table>
			<tr>
				<td align="right"><h2>관심상품</h2></td>
				<td align="left"><img src="<%=request.getContextPath()%>/img/Beating_Heart.gif" height="50" width="50"></td>
			</tr>
			<tr>
				<td colspan="2">관심있는 상품을 담아보세요.</td>
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
		<table width="100%" cellpadding="10" cellspacing="0">
			<tr>
				<td colspan="9">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<tr>
				<th><input type="checkbox" name="chk" value="chk"></th>
				<th>이미지</th>
				<th width="30%">상품정보</th>
				<th>판매가</th>
				<th>적립금</th>
				<th>배송구분</th>
				<th>배송비</th>
				<th>합계</th>
				<th>선택</th>
			</tr>
			<tr>
				<td colspan="9">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="9">관심 상품이 없습니다.</td>
			</tr>
			</c:if>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td><input type="checkbox" name="chk" value="chk"></td>
				<td>image</td>
				<td>content</td>
				<td>price</td>
				<td>point</td>
				<td>deliv</td>
				<td>deliprice</td>
				<td>total</td>
				<td>select</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="9">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
		</table>
		<br><br>
		<table width="100%">
			<tr>
				<td align="left">선택상품 삭제하기 | 선택상품 장바구니 담기</td>
				<td align="right">전체상품 주문 | 관심상품 비우기</td>
			</tr>
		</table>
	</div>
</body>
<%@ include file="../../../bottom.jsp" %>