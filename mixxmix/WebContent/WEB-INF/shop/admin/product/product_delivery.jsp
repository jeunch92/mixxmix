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
	<h3><b>��ۺ� �ϰ� ����</b></h3>
		<tr>
			<th class="m1" width="5%"><input type="checkbox"></th>
			<th class="m1" width="30%">��ǰ��</th>
			<th class="m1" width="10%">�ǸŰ�</th>
			<th class="m1" width="10%">�����å</th>
			<th class="m1" width="15%">��۱�</th>
		</tr>
		
		<%-- <c:if test="${list==null || list.size()==0}">
		<tr>
			<td align="center" colspan="7" class="line2">��ϵ� ��ǰ�� �����ϴ�.</td>
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
			<td class="m1" width="10%">����</td>
			<td class="line2">
			<select>
				<option>�� ī�װ� ��ü</option>
				<option>üũ�� ��ǰ</option>
			</select>
			��(��)</td>
		</tr>
		<tr>
			<td class="m1">�����å</td>
			<td class="line2">
			<select>
				<option>�⺻ ��� ��å</option>
				<option>����</option>
				<option>������ۺ�(�����ݾ�)</option>
				<option>����</option>
			</select>
			(��)�� �ϰ� �����մϴ�.</td>
		</tr>
		<tr>
			<td colspan="2" ></td>
		</tr>
		<tr>
			<td colspan="2" align="center" ><input type="button" value="����"></td>
		</tr>
	</table>
</div>
</body>
</html>
