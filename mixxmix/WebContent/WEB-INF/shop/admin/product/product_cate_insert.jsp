<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %>
<body>
<form name="f" action="product_category_insert.pro" method="post">
<div align="center">
	<table width="20%" border="1">
		<div align="center"><h3>카테고리 등록</h3></div>
		<tr>
			<td class="m1" width="40%" align="center">카테고리 코드</td>
			<td><input type="text" name="c_code"></td>
		</tr>
		<tr>
			<td class="m1" align="center">카테고리 이름</td>
			<td><input type="text" name="c_name"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="저장">
			<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</div>
</form>
</body>
<%@ include file="../bottom.jsp" %>