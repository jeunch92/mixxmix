<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %> 
<div align="center">
	<h2>���� ����Ʈ</h2>
	<hr color="#D8D8D8" width="100%">
	<table border=1 cellpadding="10" cellspacing="0" bordercolor="#D8D8D8" width="100%">
		<tr>
			<td colspan="2">���� �˻�</td>
		</tr>
		<tr>
        	<td class="box" colspan="2" height="0.1px"></td>
     	</tr>
     	<tr>
     		<td>���� ����</td>
     		<td>
     			<input type="radio" name="radio" value="coupon_all">��ü
     			<input type="radio" name="radio" value="coupon_ing">��ȿ�� ����
     			<input type="radio" name="radio" value="coupon_stop">�Ⱓ ����� ����
     		</td>
     	</tr>
     	<tr>
     		<td>�˻�����</td>
     		<td>
     			<select name="keyword">
         			<option value="cp_name">������
        			<option value="cp_num">������ȣ
       				<option value="cp_code">�����ڵ�
         		</select>
         		<input type="text" name="cp_search">
         	</td>
         </tr>
	</table>
	<br>
	<h3>�˻�</h3>
	<br>
	<table border=1 cellpadding="10" bordercolor="#D8D8D8" width="100%">
		<tr>
			<td align="left">
				<h4>��������Ʈ</h4> ����ȿ���� : ${cp_ing_count}��  ���Ⱓ�� ���� ���� : ${cp_end_count}��
			</td>
		</tr>
	</table>
	<br>
	<table border=1 cellpadding="10" cellspacing="0" bordercolor="#D8D8D8" width="100%">
		<tr align="center"> 
			<td>��ȣ</td>
			<td>������</td>
			<td>�����ڵ�</td>
			<td>��������</td>
			<td>��ȿ�Ⱓ</td>
			<td>���� ��/��� ��</td>
			<td>��� ��</td>
			<td>��뿩��</td>
			<td>����</td>
		</tr>
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="9">��� �� ������ �����ϴ�.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr align="center">
				<td>cp_num</td>
				<td>cp_name</td>
				<td>cp_code</td>
				<td>cp_price</td>
				<td>cp_date</td>
				<td>cp_re_give</td>
				<td>cp_usecount</td>
				<td>cp_use</td>
				<td>����/����</td>
			</tr> 
		</c:forEach>
	</table>	
	</div>
<%@ include file="../bottom.jsp" %>