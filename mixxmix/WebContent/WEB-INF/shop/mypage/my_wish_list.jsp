<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../top.jsp" %>
<body>
	<div align="center">
		<table>
			<tr>
				<td align="right"><h2>���ɻ�ǰ</h2></td>
				<td align="left"><img src="<%=request.getContextPath()%>/img/Beating_Heart.gif" height="50" width="50"></td>
			</tr>
			<tr>
				<td colspan="2">�����ִ� ��ǰ�� ��ƺ�����.</td>
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
		<table width="100%" cellpadding="10" cellspacing="0">
			<tr>
				<td colspan="9">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<tr>
				<th><input type="checkbox" name="chk" value="chk"></th>
				<th>�̹���</th>
				<th width="30%">��ǰ����</th>
				<th>�ǸŰ�</th>
				<th>������</th>
				<th>��۱���</th>
				<th>��ۺ�</th>
				<th>�հ�</th>
				<th>����</th>
			</tr>
			<tr>
				<td colspan="9">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
			<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="9">���� ��ǰ�� �����ϴ�.</td>
			</tr>
			</c:if>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td><input type="checkbox" name="chk" value="chk"></td>
				<td>image</td>
				<td>content</td>
				<td>price</td>
				<td>point</td>
				<td>deliv</td>
				<td>deliprice</td>
				<td>total</td>
				<td>select</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="9">
					<hr color="#D8D8D8" width="100%">
				</td>
			</tr>
		</table>
		<br><br>
		<table width="100%">
			<tr>
				<td align="left">���û�ǰ �����ϱ� | ���û�ǰ ��ٱ��� ���</td>
				<td align="right">��ü��ǰ �ֹ� | ���ɻ�ǰ ����</td>
			</tr>
		</table>
	</div>
</body>
<%@ include file="../../../bottom.jsp" %>