<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="../../../top.jsp" %>
    <!-- 2018-08-08 11:46 ���� -->
<!-- �α������� Ȯ�� -->
<c:set var="loginCheck" value="${sessionScope.loginCheck }"/>
<c:if test="${!loginCheck}">
	<script type="text/javascript">
		alert("�α����� ���� ���ּ���!!")
		location.href="login.do"
	</script>
</c:if>    
<!-- 2018-08-08 11:46 �� -->   
<body>
	<div align="center">
	<table width="70%">
		<tr align="center">
			<td><h2>���̼���</h2></td>
		</tr>
		<tr align="center">
			<td>
				<a href="my_index.do">���̼���</a> | 
				<a href="order_list.do">�ֹ�����</a> | 
				<a href="my_info.do">ȸ������</a> | 
				<a href="my_wish_list.do">���ɻ�ǰ</a> | 
				<a href="my_pointList.do">������</a> | 
				<a href="my_coupon.do">����</a> | 
				<a href="">�Խù�����</a> | 
				<a href="addr_list.do">����ּҷ�</a> |
			</td>
		</tr>
	</table>
	<br>
	<table border=1 cellpadding="10" cellspacing="0" bordercolor="#D8D8D8" width="100%" height="80">
		<tr align="center" valign="middle">
			<td align="center">
				<img src="<%=request.getContextPath()%>/img/mg_img_LV.1.jpg">
			</td>
			<td align="left">
				���� ���θ��� �̿����ּż� �����մϴ�. ${name}���� [LV.1]ȸ�� �̽ʴϴ�.<br>
				10,000�̻� ���Ž� 1%�� �߰� ���� ������ �� �ֽ��ϴ�.
			</td>
		</tr>
	</table>
	<br>
	<table border=1 cellpadding="30" bordercolor="#D8D8D8" width="100%" height="100">
		<tr>
			<td>
				������������	<br><br>
				�����������	<br><br>
				���� �ֹ�
			</td>
			<td align="right">
				${point}��<img src="<%=request.getContextPath()%>/img/find.jpg" class="location1"><br><br>
				${point}��<img src="<%=request.getContextPath()%>/img/find.jpg" class="location1"><br><br>
				${count}ȸ
			</td>
			<td>
				���� ������<br><br>
				����ġ��<br><br>
				���� ��
			</td>
			<td align="right">
				${money}��<br><br>
				${money}��<br><br>
				${coupon}��<img src="<%=request.getContextPath()%>/img/find.jpg" class="location1">
			</td>
		</tr>
	</table>
	<br>
	<table width="100%">
		<tr valign="top">
			<td width="40%">
				<table border="1" bordercolor="#D8D8D8" cellpadding="30">
					<tr><td>�����ֹ�ó����Ȳ(�ֱ�3���� ����)</td></tr>
					<tr><td>�Ա���</font></td></tr>
					<tr><td>����غ���</td></tr>
					<tr><td>�����</td></tr>
					<tr><td>��ۿϷ�</td></tr>
					<tr><td>���</td></tr>
					<tr><td>��ȯ</td></tr>
					<tr><td>��ǰ</td></tr>
				</table>
			</td>
			<td width="30%">
				<table border="1" bordercolor="#D8D8D8" cellpadding="30">
					<tr><td>Ŀ�´�Ƽ</td></tr>
					<tr><td>����������</td></tr>
					<tr><td>������ ���� ����</td></tr>
					<tr><td>���̺�Ʈ</td></tr>
				</table>
			</td>
			<td width="30%">
				<table border="1" bordercolor="#D8D8D8" cellpadding="30">
					<tr><td>�����޴�</td></tr>
					<tr><td>�ֹ����� ��ȸ</td></tr>
					<tr><td>ȸ�� ����</td></tr>
					<tr><td>���� ��ǰ</td></tr>
					<tr><td>������</td></tr>
					<tr><td>����</td></tr>
					<tr><td>�Խù�����</td></tr>
					<tr><td>����ּҷϰ���</td></tr>
				</table>
			</td>
		</tr>
	</table>
	</div>
</body>
<%@ include file="../../../bottom.jsp" %>