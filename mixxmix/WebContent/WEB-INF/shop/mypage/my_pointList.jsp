<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../top.jsp" %>
<body>
<div align="center">
		<table width="100%">
			<tr align="center">
				<td><h2>������</h2></td>
			</tr>
			<tr align="center">
				<td>������ ��밡�� ������ �ݾ� �Դϴ�.</td>
			</tr>
		</table>
		<br><br>
		<table width="100%">
			<tr align="center">
			<td>
				<a href="my_index.do">���̼���</a> | 
				<a href="order_list.do">�ֹ�����</a> | 
				<a href="">ȸ������</a> | 
				<a href="my_wish_list.do">���ɻ�ǰ</a> | 
				<a href="my_pointList.do">������</a> | 
				<a href="my_coupon.do">����</a> | 
				<a href="">�Խù�����</a> | 
				<a href="addr_list.do">����ּҷ�</a> | 
			</td>
			</tr>
		</table>
		<br>
	<table border=1 cellpadding="30" bordercolor="#D8D8D8" width="100%" height="100">
		<tr>
			<td>
				���� ������	<br><br>
				������ ������	<br><br>
				��ȯ�ҿ��� ������
			</td>
			<td align="right">
				${point}��<br><br>
				${point}��<br><br>
				${point}��
			</td>
			<td>
				����밡�� ������<br><br>
				���̰��� ������<br><br>
				��
			</td>
			<td align="right">
				${money}��<br><br>
				${money}��<br><br>
				��
			</td>
		</tr>
	</table>
	<br>
	<table width="100%">
		<tr align="left"><td>��������������</td></tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<tr>
			<td>�ֹ���¥</td>
			<td>������</td>
			<td>�����ֹ�</td>
			<td>����</td>
		</tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="4"><img src="<%=request.getContextPath()%>/img/point.jpg"></td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>date</td>
				<td>point</td>
				<td>null</td>
				<td>content</td>
			</tr>
		</c:forEach>
	</table>
		<hr color="#D8D8D8" width="100%">
		<h4>�� 1 ��</h4>
	<br><br><br>
	<table width="100%">
		<tr align="left"><td>���̰���������������</td></tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<tr>
			<td>�ֹ���¥</td>
			<td>������</td>
			<td>�����ֹ�</td>
			<td>��밡�ɿ�����</td>
			<td>����</td>
		</tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="5"><img src="<%=request.getContextPath()%>/img/point.jpg"></td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>date</td>
				<td>point</td>
				<td>null</td>
				<td>usedate</td>
				<td>content</td>
			</tr>
		</c:forEach>
	</table>
		<hr color="#D8D8D8" width="100%">
		<h4>�� 1 ��</h4>
	<br><br><br>
	<table width="100%">
		<tr align="left"><td>���̰�������/ȸ�������������</td></tr>
	</table>
		<hr color="#D8D8D8" width="100%">
	<table width="100%">
		<tr>
			<td>�ֹ���¥</td>
			<td>������</td>
			<td>�����ֹ�</td>
			<td>����</td>
		</tr>
	</table>
		<hr color="#D8D8D8" width="100%"> 
	<table width="100%">
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="4"><img src="<%=request.getContextPath()%>/img/point.jpg"></td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>date</td>
				<td>point</td>
				<td>null</td>
				<td>content</td>
			</tr>
		</c:forEach>
	</table>
		<hr color="#D8D8D8" width="100%">
		<br><br>
		<h4>�� 1 ��</h4>
	<table>
		<tr>
			<td align="center">
				<img src="<%=request.getContextPath()%>/img/point_a.jpg" width="1100">
			</td>
		</tr>
	</table>
</div>
</body>
<%@ include file="../../../bottom.jsp" %>