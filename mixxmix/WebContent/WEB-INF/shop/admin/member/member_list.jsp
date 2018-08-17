<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@ include file="../top.jsp" %> 
<script type="text/javascript">
function SetSelectBox(){
    var schField = $("#search option:selected").val(); // title, board_title, reg_id
    document.f.submit();
}
</script>
<form name="f" action="member_find.do" method="post">
<div align="center">
	<h2>ȸ�� ����Ʈ</h2>
	<hr color="#D8D8D8" width="100%">
	<br>
	<table width="100%">
		<tr>
			<td align="left" colspan="2">
				<h3>�⺻�˻�</h3>
			</td>
		</tr>
		<tr>
			<td width="10%">�˻�Ű����</td>
			<td align="left">
				<select name="search" id="search">
         			<option value="m_name">�̸�</option>
        			<option value="m_id">���̵�</option>
         		</select>
         		<input type="text" name="searchString" id="searchString">
			</td>
		</tr>
	</table>
	<hr color="#D8D8D8" width="100%">
	<input type="submit" value="�˻�">
	<a href="javascript:SetSelectBox()"><h3>�˻�</h3></a>
	<table border=1 cellpadding="10" bordercolor="#D8D8D8" width="100%">
		<tr>
			<td align="left">
				���˻���� : ${result}��, ����ȸ���� : ${membercount}��
			</td>
		</tr>
	</table>
	<br><br>
	<table border=1 cellpadding="5" bordercolor="#D8D8D8" width="100%">
		<tr> 
			<td><input type="checkbox" name="ch"></td>
			<td>��ȣ</td>
			<td>�̸�</td>
			<td>���̵�</td>
			<td>�������</td>
			<td>ȸ�����</td>
			<td>������</td>
			<td>�ּ�</td>
			<td>�̸���</td>
			<td>��ȭ��ȣ</td>
			<td>sms���ſ���</td>
			<td>email���ſ���</td>
			<td>������</td>
			<td>���ȸ��</td>
			<td>ȸ������</td>
		</tr>
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="15">��� �� ȸ���� �����ϴ�.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td><input type="checkbox" name="ch"></td>
				<td>${dto.m_num}</td>
				<td>${dto.m_name}</td>
				<td>${dto.m_id}</td>
				<td>${dto.m_birth1}��${dto.m_birth2}��${dto.m_birth3}��${dto.m_sunmoon}</td>
				<td>${dto.m_level }</td>
				<td>${dto.m_reg_date }</td>
				<td>(${dto.m_addr1})${dto.m_addr2} ${dto.m_addr3}</td>
				<td>${dto.m_email1}@${dto.m_email2}</td>
				<td>${dto.m_hp1}-${dto.m_hp2}-${dto.m_hp3}</td>
				<td>${dto.m_sms_ok}</td>
				<td>${dto.m_email_ok}</td>
				<td>${dto.m_point}</td>
				<td>${dto.m_mem_ok}</td>
				<td><input type="button" value="����" onclick="window.location='member_delete.do?mode=adminDel&num=${dto.m_num}'"></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<hr color="#D8D8D8" width="100%">
		<h4>�� 1 ��</h4>  
	
	<table align="left">
		<tr><th align="left">��ȸ�� �ϰ�ó��</th></tr>
		<tr><td align="left">���Ϲ߼� | SMS�߼� | ��޺��� | ���������� | ��������</td></tr>
	</table>
</div>
</form>
<%@ include file="../bottom.jsp" %> 