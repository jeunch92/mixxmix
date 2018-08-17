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
	<h2>회원 리스트</h2>
	<hr color="#D8D8D8" width="100%">
	<br>
	<table width="100%">
		<tr>
			<td align="left" colspan="2">
				<h3>기본검색</h3>
			</td>
		</tr>
		<tr>
			<td width="10%">검색키워드</td>
			<td align="left">
				<select name="search" id="search">
         			<option value="m_name">이름</option>
        			<option value="m_id">아이디</option>
         		</select>
         		<input type="text" name="searchString" id="searchString">
			</td>
		</tr>
	</table>
	<hr color="#D8D8D8" width="100%">
	<input type="submit" value="검색">
	<a href="javascript:SetSelectBox()"><h3>검색</h3></a>
	<table border=1 cellpadding="10" bordercolor="#D8D8D8" width="100%">
		<tr>
			<td align="left">
				·검색결과 : ${result}명, ·총회원수 : ${membercount}명
			</td>
		</tr>
	</table>
	<br><br>
	<table border=1 cellpadding="5" bordercolor="#D8D8D8" width="100%">
		<tr> 
			<td><input type="checkbox" name="ch"></td>
			<td>번호</td>
			<td>이름</td>
			<td>아이디</td>
			<td>생년월일</td>
			<td>회원등급</td>
			<td>가입일</td>
			<td>주소</td>
			<td>이메일</td>
			<td>전화번호</td>
			<td>sms수신여부</td>
			<td>email수신여부</td>
			<td>적립금</td>
			<td>평생회원</td>
			<td>회원삭제</td>
		</tr>
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="15">등록 된 회원이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td><input type="checkbox" name="ch"></td>
				<td>${dto.m_num}</td>
				<td>${dto.m_name}</td>
				<td>${dto.m_id}</td>
				<td>${dto.m_birth1}년${dto.m_birth2}월${dto.m_birth3}일${dto.m_sunmoon}</td>
				<td>${dto.m_level }</td>
				<td>${dto.m_reg_date }</td>
				<td>(${dto.m_addr1})${dto.m_addr2} ${dto.m_addr3}</td>
				<td>${dto.m_email1}@${dto.m_email2}</td>
				<td>${dto.m_hp1}-${dto.m_hp2}-${dto.m_hp3}</td>
				<td>${dto.m_sms_ok}</td>
				<td>${dto.m_email_ok}</td>
				<td>${dto.m_point}</td>
				<td>${dto.m_mem_ok}</td>
				<td><input type="button" value="삭제" onclick="window.location='member_delete.do?mode=adminDel&num=${dto.m_num}'"></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<hr color="#D8D8D8" width="100%">
		<h4>◀ 1 ▶</h4>  
	
	<table align="left">
		<tr><th align="left">·회원 일괄처리</th></tr>
		<tr><td align="left">메일발송 | SMS발송 | 등급변경 | 적립금지급 | 쿠폰지급</td></tr>
	</table>
</div>
</form>
<%@ include file="../bottom.jsp" %> 