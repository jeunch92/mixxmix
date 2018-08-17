<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="../top.jsp" %>
<c:set var="num" value="${getProduct.p_num}"/>
<c:set var="content" value="${getProduct.p_content}"/>
<body>
<table width="100%" >
<tr valign="top">
	<td width="50%">
		<img src="<%=request.getContextPath()%>/img/pro.gif">
	</td>
	<td width="50%">
		<table width="100%" cellpadding="30" cellspacing="10">
			<tr><td colspan="2"><hr color="#000000" width="100%"></td></tr>
			<tr><td colspan="2">색깔넣는곳</td></tr>
			<tr><td colspan="2"><font size="6"><b>상품명${getProduct.p_name}</b></font></td></tr>
			<tr><td><font size="4"><b>판매가 : </b></font></td><td>${getProduct.p_price}</td></tr>
			<tr><td>상품코드</td><td>${getProduct.p_code}</td></tr>
			<tr><td>상품소재</td><td>${getProduct.p_matter}</td></tr>
			<tr><td>브랜드</td><td>${getProduct.p_producer}</td></tr>
			<tr><td>브랜드이미지</td><td>${getProduct.p_proimg}</td></tr>
			<tr><td>색상</td><td>${getProduct.p_color}</td></tr>
			<tr><td>사이즈</td><td>${getProduct.p_size}</td></tr>
			<tr><td colspan="2"><hr color="#000000" width="100%"></td></tr>
			<tr><td colspan="2">선택한거 추가하는 창</td></tr>
			<tr align="right"><td colspan="2">총 상품 금액 : ${getProduct.p_price} 원</td></tr>
			<tr align="center"><td colspan="2">카카오톡으로 공유하기</td></tr>
			<tr align="center"><td colspan="2">구매하기|장바구니|관심상품</td></tr>
			<tr align="center"><td colspan="2">카카오톡으로 상담하기</td></tr>
			<tr align="center"><td colspan="2">재입고 공지</td></tr>
		</table>
	</td>
</tr>
</table><br>
<img src="<%=request.getContextPath()%>/img/line.jpg"><br><br>
<table width="80%">
	<tr align="center">
		<td colspan="5"><font size="4"><b>관련상품</b></font><br><font size="2">고객님들께서 함께 구매한 상품입니다.</font></td>
	</tr>
	<tr align="center">
		<td>
			이미지<br>상품이름<br>가격
		</td>
		<td>
			이미지<br>상품이름<br>가격
		</td>
		<td>
			이미지<br>상품이름<br>가격
		</td>
		<td>
			이미지<br>상품이름<br>가격
		</td>
		<td>
			이미지<br>상품이름<br>가격
		</td>
	</tr>
</table>
<br><br><br>
<table width="100%">
	<tr align="center">
		<td colspan="5"><font size="4"><b>상품후기</b></font><br><font size="2">상품의 사용후기를 적어주세요.</font></td>
	</tr>
	<tr>
		<td align="right">리뷰작성|모두보기</td>
	</tr>
</table><br>
<table width="100%">
	<tr>
		<td align="left">좋아요순|최신순|조회수순</td>
	</tr>
	<tr>
		<td align="center">상품리뷰가 없습니다.</td>
	</tr>
</table>
<br><br><br>
<table>
	<tr align="center">
		<td colspan="5"><font size="4"><b>상세보기</b></font></td>
	</tr>
</table>
</body>
<%@ include file="../bottom.jsp" %>