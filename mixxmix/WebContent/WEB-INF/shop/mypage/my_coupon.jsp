<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../top.jsp" %>
<body>
<div align="center">
		<table>
			<tr align="center">
				<td><h2>��������</h2></td>
			</tr>
			<tr>
				<td>��밡�� ���� : ${coupon}��</td>
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
				<th>��ȣ</th>
				<th>������</th>
				<th width="30%">���������ǰ</th>
				<th>���űݾ�</th>
				<th>��������</th>
				<th>��������</th>
				<th>��밡�ɱⰣ</th>
			</tr> 
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="7"><img src="<%=request.getContextPath()%>/img/coupon_no.jpg"></td>
			</tr>
			</c:if>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>num</td>
				<td>couponname</td>
				<td>couponproduct</td>
				<td>price</td>
				<td>cardcash</td>
				<td>��������</td>
				<td>usedate</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="7">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
		</table>
		<br><br>
		<h4>�� 1 ��</h4>
		<table width="80%" border="1" align="center" valign="middle" cellpadding="20" cellspacing="0">
			<tr>
				<td align="center">
					<font size="5">����������ȣ ����ϱ�</font><br>
					<input type="text" name="coupon"><img src="<%=request.getContextPath()%>/img/coupon_num.jpg" id="location1"><br><br>
					<font size="2">�ݵ�� ���θ����� ����� ������ �Է����ּ���. (10~35�� �Ϸù�ȣ"-"����)</font>
				</td>
			</tr>
		</table>
		<br>
		<table border="1">
			<tr>
				<td align="center"><img src="<%=request.getContextPath()%>/img/coupon_ex.jpg" width="1100"></td>
			</tr>
		</table>
	</div>
	</body>
<%@ include file="../../../bottom.jsp" %>