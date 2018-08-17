<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
        var cal={
             buttonImageOnly: true,
            buttonImage: "<%=request.getContextPath()%>/img/ico_cal.gif",
             dateFormat: "yy-mm-dd",
             showOn: "both"
        }
        $( function() {
          $( "#datepicker1" ).datepicker(cal);
        } );
       $( function() {
           $( "#datepicker2" ).datepicker(cal);
         } );
</script>
<link rel="stylesheet" type="text/css" href="../../../style.css">
<title>이벤트 관리</title>
</head>
<body>
<div align="center">
	<h2>이벤트 관리</h2>
	<hr color="#D8D8D8" width="100%">
	<table border=1 cellpadding="10" cellspacing="0" bordercolor="#D8D8D8" width="100%">
		<tr>
			<td colspan="2">이벤트 리스트</td>
		</tr>
		<tr>
        	<td class="box" colspan="2" height="0.1px"></td>
     	</tr>
     	<tr>
     		<td>진행 여부</td>
     		<td>
     			<input type="radio" name="radio" value="event_all">전체
     			<input type="radio" name="radio" value="event_ing">이벤트 진행중
     			<input type="radio" name="radio" value="event_stop">이벤트 종료
     		</td>
     	</tr>
     	<tr>
     		<td>이벤트 기간</td>
     		<td><input type="text" id="datepicker1" readonly> ~ <input type="text" id="datepicker2"readonly> 조회</td>
     	</tr>
     	<tr>
     		<td>이벤트명</td>
     		<td><input type="text" name="eventname"></td>
     	</tr>
	</table>
	<br>
	<h3>검색</h3>
	<br>
	<table border=1 cellpadding="10" bordercolor="#D8D8D8" width="100%">
		<tr>
			<td align="left">
				·검색결과 : 총 ${eventcount}건(진행중 : ${event_ing}건)
			</td>
		</tr>
	</table>
	<br>
	<table border=1 cellpadding="10" cellspacing="0" bordercolor="#D8D8D8" width="100%">
		<tr align="center"> 
			<td>번호</td>
			<td>이벤트명</td>
			<td>내용</td>
			<td>시작일</td>
			<td>종료일</td>
			<td>발표일</td>
			<td>진행여부</td>
			<td>삭제</td>
		</tr>
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="8">등록 된 이벤트가 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr align="center">
				<td>num</td>
				<td>name</td>
				<td>content</td>
				<td>startday</td>
				<td>endday</td>
				<td>winday</td>
				<td>event_ing</td>
				<td>delete</td>
			</tr> 
		</c:forEach>
	</table>	
	</div>
<%@ include file="../bottom.jsp" %>