<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../top.jsp" %>
<body>
<div align="center">
		<table>
			<tr align="center">
				<td><h2>마이쿠폰</h2></td>
			</tr>
			<tr>
				<td>사용가능 쿠폰 : ${coupon}장</td>
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
				<th>번호</th>
				<th>쿠폰명</th>
				<th width="30%">쿠폰적용상품</th>
				<th>구매금액</th>
				<th>결제수단</th>
				<th>쿠폰혜택</th>
				<th>사용가능기간</th>
			</tr> 
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="7"><img src="<%=request.getContextPath()%>/img/coupon_no.jpg"></td>
			</tr>
			</c:if>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>num</td>
				<td>couponname</td>
				<td>couponproduct</td>
				<td>price</td>
				<td>cardcash</td>
				<td>쿠폰혜택</td>
				<td>usedate</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
		</table>
		<br><br>
		<h4>◀ 1 ▶</h4>
		<table width="80%" border="1" align="center" valign="middle" cellpadding="20" cellspacing="0">
			<tr>
				<td align="center">
					<font size="5">쿠폰인증번호 등록하기</font><br>
					<input type="text" name="coupon"><img src="<%=request.getContextPath()%>/img/coupon_num.jpg" id="location1"><br><br>
					<font size="2">반드시 쇼핑몰에서 등록한 쿠폰만 입력해주세요. (10~35자 일련번호"-"제외)</font>
				</td>
			</tr>
		</table>
		<br>
		<table border="1">
			<tr>
				<td align="center"><img src="<%=request.getContextPath()%>/img/coupon_ex.jpg" width="1100"></td>
			</tr>
		</table>
	</div>
	</body>
<%@ include file="../../../bottom.jsp" %>