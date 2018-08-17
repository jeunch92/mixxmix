<%@page import="board.mybatis.BoardMapper"%>
<%@page import="board.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ include file="../../../../../top.jsp"%>
<style type="text/css">
#pretty{
	background: #FBEFF8;   
	padding: 100px;    
	position: relative;
	height: 10%;
}
.tableClass{
	padding: 10px;
	background: #FBEFF8;  
	border-style: solid;
	border-color: #BDBDBD;
	border-width: 0.5px;
}
.line{  
	border-style: solid;
	border-color: #BDBDBD;
	border-width: 0.5px;
}
</style>
<link rel="stylesheet" type="text/css" href="../style.css">    
<script>
function real(){
	
	var realDel= confirm("���� �����Ͻðڽ��ϱ�?")
	if(realDel){
		window.location='deleteFAQ.board?num=${dto.num}'
	}
}   
</script>
<c:set var="dto" value="${dto}"/>	
<div align="center">
	<b><h2>�۳��� ����</h2></b>         
	<table width="100%">      
		<tr>
			<th class="tableClass" width="20%">�۹�ȣ</th>
			<td align="center" width="30%" class="line">${dto.num}</td>
			<th class="tableClass" width="20%">��ȸ��</th>
			<td align="center" width="30%" class="line">${dto.readcount}</td>
		</tr>
		<tr>
			<th class="tableClass" width="20%">�ۼ���</th>
			<td align="center" width="30%" class="line">${dto.writer }</td>
			<th class="tableClass" width="20%">�ۼ���</th>
			<td align="center" width="30%" class="line">${dto.reg_date }</td>
		</tr>
		<tr>
			<th class="tableClass" width="20%">������</th>
			<td align="center" colspan="3" class="line">${dto.subject }</td>
		</tr>
		<tr>
			<th class="tableClass" width="20%">�۳���</th>
			<td align="left" colspan="3" class="line">${dto.content }</td>
		</tr>
		<tr class="tableClass">
			<td colspan="4" class="line">
			<c:if test="${adminLogin}">
				<input type="button" value="�ۼ���" onclick="window.location='FAQupdateForm.board?num=${dto.num}'">
				<input type="button" value="�ۻ���" onclick="javascript:real()">
     	 	</c:if>
				<input type="button" value="�۸��"  onclick="window.location='FAQ.board'" align="center">
			</td>
		</tr>
	</table>
</div>
<%@ include file="../../../../bottom.jsp"%>








