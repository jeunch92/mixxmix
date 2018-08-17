<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../../style.css">  
</head>
<body>
<div>
<div>
	<table  width="70%">
	상품통계
		<tr>
			<td class="box" colspan="2" height="0.1px"></td>
		</tr>
		<tr>
			<th class="m1" width="20%">총 상품 갯수</th>
			<td>개</td>
		</tr>
		<tr>
			<th class="m1">품절상품</th>
			<td>개(보기버튼)</td>
		</tr>
		<tr>
			<th class="m1">안전재고 이하 상품</th>
			<td>개(보기버튼)</td>
		</tr>
		<tr>
			<th class="m1">메인 진열 상품</th>
			<td>
			신상품:	랜덤진열<br>
			추천상품:	<br>
			인기상품:	<br>
			이벤트상품:<br>
			추가상품:	<br>
			</td>
		</tr>
	</table >
</div><br>
	<table class="tab" width="70%" >
	인기상품 TOP 10 - 주문횟수
		<tr>
			<th class="m1">상품번호</th>
			<th class="m1">상품명</th>
			<th class="m1">가격</th>
			<th class="m1">주문횟수</th>
			<th class="m1">판매수량</th>
			<th class="m1">판매총액</th>
			<th class="m1">조회수</th>
		</tr>
		
		<c:if test="${list==null || list.size()==0}">
		<tr>
			<td align="center" colspan="7">등록된 상품이 없습니다.</td>
		</tr>
		</c:if>
		<c:forEach var="dto" items="${list }">
		<tr>
			<td>${p_num}</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		</c:forEach>
	</table><br>
	<table class="tab" width="70%" >
	인기상품 TOP 10 - 매출액
		<tr>
			<th class="m1">상품번호</th>
			<th class="m1">상품명</th>
			<th class="m1">가격</th>
			<th class="m1">주문횟수</th>
			<th class="m1">판매수량</th>
			<th class="m1">판매총액</th>
			<th class="m1">조회수</th>
		</tr>
		
		<c:if test="${list==null || list.size()==0}">
		<tr>
			<td align="center" colspan="7">등록된 상품이 없습니다.</td>
		</tr>
		</c:if>
		<c:forEach var="dto" items="${list }">
		<tr>
			<td>${p_num}</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>