<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../../../top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="list" value="${list}"/>
<html>
<head>
	<title>자주 묻는 질문</title>
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
		<font size="5" >자 주 묻 는 질 문</font><br><br>
		<font size="2" color="grey">고객님들께서 자주 묻는 질문입니다. 1:1문의를 하시기 전에 FAQ를 확인해주세요.</font>  
		<table border="0" width="80%">  
			<tr>
     	 	<c:if test="${adminLogin}">
				<td align="right" ><a href="FAQForm.board">글쓰기</a></td>
     	 	</c:if>
			</tr>
		</table>
		<table  width="80%" >
			<tr >
				<td colspan="5" align="right" >     
					<select name="dayFind">
						<option value="일주일">일주일</option>
						<option value="한달">한달</option>
						<option value="세달">세달</option>
						<option value="전체">전체</option>
					</select>
					<select name="contentFind">
						<option value="제목">제목</option>
						<option value="내용">내용</option>
						<option value="글쓴이">글쓴이</option>
						<option value="아이디">아이디</option>
					</select>
					<input type="text" name="findText" size="20">
					<button value="검색">검색</button>
				</td>
			</tr>
			<tr id="pretty"  class="tableClass">
				<th class="line">번호</th>
				<th width="30%" class="line">제목</th>
				<th class="line">작성자</th>
				<th class="line">작성일</th>
				<th class="line">조회</th>
			</tr>
			
			<c:if test="${list==null || list.size()==0}">
			<tr  class="line" >
				<td colspan="6" class="line">등록된 게시글이 없습니다.</td>
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













