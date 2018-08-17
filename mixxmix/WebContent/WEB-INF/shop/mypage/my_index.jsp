<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="../../../top.jsp" %>
    <!-- 2018-08-08 11:46 시작 -->
<!-- 로그인유무 확인 -->
<c:set var="loginCheck" value="${sessionScope.loginCheck }"/>
<c:if test="${!loginCheck}">
	<script type="text/javascript">
		alert("로그인을 먼저 해주세요!!")
		location.href="login.do"
	</script>
</c:if>    
<!-- 2018-08-08 11:46 끝 -->   
<body>
	<div align="center">
	<table width="70%">
		<tr align="center">
			<td><h2>마이쇼핑</h2></td>
		</tr>
		<tr align="center">
			<td>
				<a href="my_index.do">마이쇼핑</a> | 
				<a href="order_list.do">주문내역</a> | 
				<a href="my_info.do">회원정보</a> | 
				<a href="my_wish_list.do">관심상품</a> | 
				<a href="my_pointList.do">적립금</a> | 
				<a href="my_coupon.do">쿠폰</a> | 
				<a href="">게시물관리</a> | 
				<a href="addr_list.do">배송주소록</a> |
			</td>
		</tr>
	</table>
	<br>
	<table border=1 cellpadding="10" cellspacing="0" bordercolor="#D8D8D8" width="100%" height="80">
		<tr align="center" valign="middle">
			<td align="center">
				<img src="<%=request.getContextPath()%>/img/mg_img_LV.1.jpg">
			</td>
			<td align="left">
				저희 쇼핑몰을 이용해주셔서 감사합니다. ${name}님은 [LV.1]회원 이십니다.<br>
				10,000이상 구매시 1%를 추가 할인 받으실 수 있습니다.
			</td>
		</tr>
	</table>
	<br>
	<table border=1 cellpadding="30" bordercolor="#D8D8D8" width="100%" height="100">
		<tr>
			<td>
				·가용적립금	<br><br>
				·사용적립금	<br><br>
				·총 주문
			</td>
			<td align="right">
				${point}원<img src="<%=request.getContextPath()%>/img/find.jpg" class="location1"><br><br>
				${point}원<img src="<%=request.getContextPath()%>/img/find.jpg" class="location1"><br><br>
				${count}회
			</td>
			<td>
				·총 적립금<br><br>
				·예치금<br><br>
				·쿠 폰
			</td>
			<td align="right">
				${money}원<br><br>
				${money}원<br><br>
				${coupon}개<img src="<%=request.getContextPath()%>/img/find.jpg" class="location1">
			</td>
		</tr>
	</table>
	<br>
	<table width="100%">
		<tr valign="top">
			<td width="40%">
				<table border="1" bordercolor="#D8D8D8" cellpadding="30">
					<tr><td>나의주문처리현황(최근3개월 기준)</td></tr>
					<tr><td>입금전</font></td></tr>
					<tr><td>배송준비중</td></tr>
					<tr><td>배송중</td></tr>
					<tr><td>배송완료</td></tr>
					<tr><td>취소</td></tr>
					<tr><td>교환</td></tr>
					<tr><td>반품</td></tr>
				</table>
			</td>
			<td width="30%">
				<table border="1" bordercolor="#D8D8D8" cellpadding="30">
					<tr><td>커뮤니티</td></tr>
					<tr><td>·공지사항</td></tr>
					<tr><td>·자주 묻는 질문</td></tr>
					<tr><td>·이벤트</td></tr>
				</table>
			</td>
			<td width="30%">
				<table border="1" bordercolor="#D8D8D8" cellpadding="30">
					<tr><td>빠른메뉴</td></tr>
					<tr><td>주문내역 조회</td></tr>
					<tr><td>회원 정보</td></tr>
					<tr><td>관심 상품</td></tr>
					<tr><td>적립금</td></tr>
					<tr><td>쿠폰</td></tr>
					<tr><td>게시물관리</td></tr>
					<tr><td>배송주소록관리</td></tr>
				</table>
			</td>
		</tr>
	</table>
	</div>
</body>
<%@ include file="../../../bottom.jsp" %>