<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
	String m_id = request.getParameter("id"); 
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
	<form name="f" method="post" action="id_checkForm.do">
		���̵�:<input type="text" name="id" value="<%=m_id%>"><input type="submit" value="�ߺ�Ȯ��"/>
	</form>
	<c:choose>

    <c:when test="${list==null || list.size()==0}">
      <h2>��� ������ ID�Դϴ�.</h2>
    </c:when>

    <c:otherwise>
      <h2>�ߺ��� ���̵� �Դϴ�.</h2>
    </c:otherwise>

</c:choose>
</div>
</body>
</html>