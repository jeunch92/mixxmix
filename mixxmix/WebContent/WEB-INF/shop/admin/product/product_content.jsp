<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="../top.jsp" %>
<c:set var="num" value="${getProduct.p_num}"/>
<c:set var="content" value="${getProduct.p_content}"/>
<body>
<table width="100%" >
<tr valign="top">
	<td width="50%">
		<img src="<%=request.getContextPath()%>/img/pro.gif">
	</td>
	<td width="50%">
		<table width="100%" cellpadding="30" cellspacing="10">
			<tr><td colspan="2"><hr color="#000000" width="100%"></td></tr>
			<tr><td colspan="2">����ִ°�</td></tr>
			<tr><td colspan="2"><font size="6"><b>��ǰ��${getProduct.p_name}</b></font></td></tr>
			<tr><td><font size="4"><b>�ǸŰ� : </b></font></td><td>${getProduct.p_price}</td></tr>
			<tr><td>��ǰ�ڵ�</td><td>${getProduct.p_code}</td></tr>
			<tr><td>��ǰ����</td><td>${getProduct.p_matter}</td></tr>
			<tr><td>�귣��</td><td>${getProduct.p_producer}</td></tr>
			<tr><td>�귣���̹���</td><td>${getProduct.p_proimg}</td></tr>
			<tr><td>����</td><td>${getProduct.p_color}</td></tr>
			<tr><td>������</td><td>${getProduct.p_size}</td></tr>
			<tr><td colspan="2"><hr color="#000000" width="100%"></td></tr>
			<tr><td colspan="2">�����Ѱ� �߰��ϴ� â</td></tr>
			<tr align="right"><td colspan="2">�� ��ǰ �ݾ� : ${getProduct.p_price} ��</td></tr>
			<tr align="center"><td colspan="2">īī�������� �����ϱ�</td></tr>
			<tr align="center"><td colspan="2">�����ϱ�|��ٱ���|���ɻ�ǰ</td></tr>
			<tr align="center"><td colspan="2">īī�������� ����ϱ�</td></tr>
			<tr align="center"><td colspan="2">���԰� ����</td></tr>
		</table>
	</td>
</tr>
</table><br>
<img src="<%=request.getContextPath()%>/img/line.jpg"><br><br>
<table width="80%">
	<tr align="center">
		<td colspan="5"><font size="4"><b>���û�ǰ</b></font><br><font size="2">���Ե鲲�� �Բ� ������ ��ǰ�Դϴ�.</font></td>
	</tr>
	<tr align="center">
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
	</tr>
</table>
<br><br><br>
<table width="100%">
	<tr align="center">
		<td colspan="5"><font size="4"><b>��ǰ�ı�</b></font><br><font size="2">��ǰ�� ����ı⸦ �����ּ���.</font></td>
	</tr>
	<tr>
		<td align="right">�����ۼ�|��κ���</td>
	</tr>
</table><br>
<table width="100%">
	<tr>
		<td align="left">���ƿ��|�ֽż�|��ȸ����</td>
	</tr>
	<tr>
		<td align="center">��ǰ���䰡 �����ϴ�.</td>
	</tr>
</table>
<br><br><br>
<table>
	<tr align="center">
		<td colspan="5"><font size="4"><b>�󼼺���</b></font></td>
	</tr>
</table>
</body>
<%@ include file="../bottom.jsp" %>