<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC
 "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>application 을 이용한 방문자 수</h2>
<%
    //1.application에 저장되어있는 count의 정보를 가져온다.
   
    Object cnt = application.getAttribute("count");
   
    //2. 만약 가져온 count정보가 null이라면(최초의 손님) count의 값을 1로 저장한후
    //   다시 count의 정보를 가져온다.
    if( cnt == null ){
        System.out.println(cnt+" => server최초입니다.");
        application.setAttribute("count", 1);
        cnt = application.getAttribute("count");
           
    }else{
    //3.  가지고 온 count의 값을 +1을 증가하여 다시 변경된 값으로 저장한후 출력한다.
   
        int cn = (Integer)cnt;
       
        if(session.isNew()) cn++;
       
        application.setAttribute("count",cn);
       
    }  
%>
<h3>방문자 수 : <%=cnt %> 명</h3>
 
<hr olor="color" />
 
경로 :
<%=application.getRealPath("/") %>
</body>
</html>