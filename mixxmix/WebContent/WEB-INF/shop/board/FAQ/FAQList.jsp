<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../../../top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="list" value="${list}"/>
<html>
<head>
	<title>���� ���� ����</title>
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
	border-width: 0.3px;
}
.line{  
	border-bottom-style: solid;
	/* border-style: solid; */
	border-bottom-color: #BDBDBD;
	border-width: 0.3px;
	border-right-style: none;
}

</style>
</head>
<body>
	<div align="center">
		<font size="5" >�� �� �� �� �� ��</font><br><br>
		<font size="2" color="grey">���Ե鲲�� ���� ���� �����Դϴ�. 1:1���Ǹ� �Ͻñ� ���� FAQ�� Ȯ�����ּ���.</font>  
		<table border="0" width="80%">  
			<tr>
     	 	<c:if test="${adminLogin}">
				<td align="right" ><a href="FAQForm.board">�۾���</a></td>
     	 	</c:if>
			</tr>
		</table>
		<table  width="80%" >
			<tr >
				<td colspan="5" align="right" >     
					<select name="dayFind">
						<option value="������">������</option>
						<option value="�Ѵ�">�Ѵ�</option>
						<option value="����">����</option>
						<option value="��ü">��ü</option>
					</select>
					<select name="contentFind">
						<option value="����">����</option>
						<option value="����">����</option>
						<option value="�۾���">�۾���</option>
						<option value="���̵�">���̵�</option>
					</select>
					<input type="text" name="findText" size="20">
					<button value="�˻�">�˻�</button>
				</td>
			</tr>
			<tr id="pretty"  class="tableClass">
				<th class="line">��ȣ</th>
				<th width="30%" class="line">����</th>
				<th class="line">�ۼ���</th>
				<th class="line">�ۼ���</th>
				<th class="line">��ȸ</th>
			</tr>
			
			<c:if test="${list==null || list.size()==0}">
			<tr  class="line" >
				<td colspan="6" class="line">��ϵ� �Խñ��� �����ϴ�.</td>
			</tr>   
			</c:if>
			<c:set var="i" value="1"/>
			<c:forEach var="dto" items="${list}">
			<tr class="line">
				<td align="center" class="line">${i}</td>
				<c:set var="i" value="${i+1}"/>

				<td class="line">
					<a href="FAQContent.board?num=${dto.num}">${dto.subject}</a>
				</td>
				<td align="center" class="line">${dto.writer}</td>
				<td align="center" class="line">${dto.reg_date}</td>
				<td align="center" class="line">${dto.readcount}</td>			
			</tr>
			</c:forEach>
		
		</table>
		<br>
	</div>
</body>
</html>
<%@ include file="../../../../bottom.jsp" %>













