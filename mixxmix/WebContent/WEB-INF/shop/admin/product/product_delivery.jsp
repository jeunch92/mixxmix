<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="../../../style.css">
</head>
<body>
<div align="center">
<table class="tab" width="70%" >
	<h3><b>배송비 일괄 수정</b></h3>
		<tr>
			<th class="m1" width="5%"><input type="checkbox"></th>
			<th class="m1" width="30%">상품명</th>
			<th class="m1" width="10%">판매가</th>
			<th class="m1" width="10%">배송정책</th>
			<th class="m1" width="15%">배송금</th>
		</tr>
		
		<%-- <c:if test="${list==null || list.size()==0}">
		<tr>
			<td align="center" colspan="7" class="line2">등록된 상품이 없습니다.</td>
		</tr>
		</c:if>
		<c:forEach var="dto" items="${list }"> --%>
		<tr>
			<td align="center" class="line2"><input type="checkbox"></td>
			<td align="center" class="line2">d</td>
			<td align="center" class="line2">d</td>
			<td align="center" class="line2">d</td>
			<td align="center" class="line2">d</td>
		</tr>
		<%-- </c:forEach> --%>
	</table><br>
	<table width="70%">
		<tr>
			<td class="m1" width="10%">범위</td>
			<td class="line2">
			<select>
				<option>이 카테고리 전체</option>
				<option>체크한 상품</option>
			</select>
			을(를)</td>
		</tr>
		<tr>
			<td class="m1">배송정책</td>
			<td class="line2">
			<select>
				<option>기본 배송 정책</option>
				<option>무료</option>
				<option>개별배송비(고정금액)</option>
				<option>착불</option>
			</select>
			(으)로 일괄 변경합니다.</td>
		</tr>
		<tr>
			<td colspan="2" ></td>
		</tr>
		<tr>
			<td colspan="2" align="center" ><input type="button" value="적용"></td>
		</tr>
	</table>
</div>
</body>
</html>
