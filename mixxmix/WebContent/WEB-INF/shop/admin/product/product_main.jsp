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
	��ǰ���
		<tr>
			<td class="box" colspan="2" height="0.1px"></td>
		</tr>
		<tr>
			<th class="m1" width="20%">�� ��ǰ ����</th>
			<td>��</td>
		</tr>
		<tr>
			<th class="m1">ǰ����ǰ</th>
			<td>��(�����ư)</td>
		</tr>
		<tr>
			<th class="m1">������� ���� ��ǰ</th>
			<td>��(�����ư)</td>
		</tr>
		<tr>
			<th class="m1">���� ���� ��ǰ</th>
			<td>
			�Ż�ǰ:	��������<br>
			��õ��ǰ:	<br>
			�α��ǰ:	<br>
			�̺�Ʈ��ǰ:<br>
			�߰���ǰ:	<br>
			</td>
		</tr>
	</table >
</div><br>
	<table class="tab" width="70%" >
	�α��ǰ TOP 10 - �ֹ�Ƚ��
		<tr>
			<th class="m1">��ǰ��ȣ</th>
			<th class="m1">��ǰ��</th>
			<th class="m1">����</th>
			<th class="m1">�ֹ�Ƚ��</th>
			<th class="m1">�Ǹż���</th>
			<th class="m1">�Ǹ��Ѿ�</th>
			<th class="m1">��ȸ��</th>
		</tr>
		
		<c:if test="${list==null || list.size()==0}">
		<tr>
			<td align="center" colspan="7">��ϵ� ��ǰ�� �����ϴ�.</td>
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
	�α��ǰ TOP 10 - �����
		<tr>
			<th class="m1">��ǰ��ȣ</th>
			<th class="m1">��ǰ��</th>
			<th class="m1">����</th>
			<th class="m1">�ֹ�Ƚ��</th>
			<th class="m1">�Ǹż���</th>
			<th class="m1">�Ǹ��Ѿ�</th>
			<th class="m1">��ȸ��</th>
		</tr>
		
		<c:if test="${list==null || list.size()==0}">
		<tr>
			<td align="center" colspan="7">��ϵ� ��ǰ�� �����ϴ�.</td>
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