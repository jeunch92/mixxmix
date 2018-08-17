<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %>
<body>
	<a href="product_cate_insert.pro">ī�װ� ���</a>
	<table border="1">
		<tr>
			<td>ī�װ� ��ȣ</td>
			<td>ī�װ� �ڵ�</td>
			<td>ī�װ� �̸�</td>
		</tr>
		<c:if test="${c_list==null || c_list.size()==0}">
			<tr>
				<td align="center" colspan="14">��� �� ī�װ��� �����ϴ�.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${c_list}">
			<tr>
				<td><input type="checkbox" name="ch">${dto.c_num}</td>
				<td>${dto.c_code}</td>
				<td>${dto.c_name}</td>
			</tr> 
		</c:forEach>
	</table>
</body>
<%@ include file="../bottom.jsp" %>