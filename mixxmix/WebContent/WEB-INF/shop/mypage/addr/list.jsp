<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../../top.jsp" %>
<body>
<div align="center">
		<table>
			<tr align="center">
				<td><h2>����ּҷϰ���</h2></td>
			</tr>
			<tr>
				<td>���־��� �ּ� ������� ���� �� �� �ֽ��ϴ�.</td>
			</tr>
		</table>
		<br><br>
		<table>
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
		<table width="100%" cellpadding="10">
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<tr>
				<th>�ּҷ� ����</th>
				<th width="30%">�������</th>
				<th>������</th>
				<th>�Ϲ���ȭ</th>
				<th>�޴���ȭ</th>
				<th>�ּ�</th>
				<th>����</th>
			</tr> 
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="7"><img src="<%=request.getContextPath()%>/img/addr_no.jpg"></td>
			</tr>
			</c:if>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>fix</td>
				<td>address</td>
				<td>name</td>
				<td>call</td>
				<td>phone</td>
				<td>address</td>
				<td>update</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
		</table>
		<table align="center">
			<tr>
				<td align="right"><img src="<%=request.getContextPath()%>/img/addr_add.jpg"></td>
			</tr>
		</table>
		<br><br>
		<table>
			<tr>
				<td align="center"><img src="<%=request.getContextPath()%>/img/addr_ex.jpg" width="1100"></td>
			</tr>
		</table>
		
	</div>
</body>
<%@ include file="../../../../bottom.jsp" %>