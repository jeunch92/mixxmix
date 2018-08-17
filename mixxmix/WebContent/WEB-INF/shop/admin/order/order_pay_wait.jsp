<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="../top.jsp" %> 

<head>
<link rel="stylesheet" type="text/css" href="../../style.css">  
<meta charset="EUC-KR">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        var cal={
             buttonImageOnly: true,
        	 buttonImage: "../../../img/ico_cal.gif",
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
</head>

	<h2>입금대기 리스트</h2>
	<hr width="100%">
	<div align="center">
		<table  align="left" border="0">
		<tr>
			<td align="left">주문검색</td>
		</tr>
		<table width="100%" border="1">
			<tr>
				<th>검색 키워드</th>
				<td>
					<select id="search_keyword" name="keyword">
              		      <option value="order_number">주문번호</option>
               		  	  <option value="order_name">주문자명</option>
                		  <option value="order_id">주문자ID</option>
                		  <option value="moneysend_name">입금자명</option>
                		  <option value="pro_recent_name">수령인</option>
                		  <option value="--">--------</option>
                		  <option value="pro_name">상품명</option>
                		  <option value="pro_number">상품번호</option>
                		  <option value="pro_maker">제조업체</option>
             	    </select>
             			  <input type="text" name="name">
             	</td>
             </tr>
           	 <tr>
				<th>입금계좌 별검색</th>
				<td>
					<select id="search_keyword" name="keyword">
              			<option value="tongjang_number">[농협]3520229595253 예금주:임형수</option>
             		</select>
             		<input type="submit" name="tongjang" value="계좌추가/변경">
             	</td>
              <tr>
              <tr>
				<th>주문날짜</th>
				<td>
					<input type="text" id="datepicker1" readonly> ~ <input type="text" id="datepicker2"readonly>
   						 <input type="button" id="r_today" name="today" value="오늘">
 						 <input type="button" id="r_week" name="week"  	value="일주일전">
 						 <input type="button" id="r_month" name="month" value="한달전">
             	</td>
              <tr>
             	<th>결제 수단</th>
             	<td>
             		<input type="radio" value="전체"> 전체
             		<input type="radio" value="신용카드"> 신용카드
             		<input type="radio" value="계좌이체"> 계좌이체
             	</td>
             </tr>
             </table>
             <br>
             <div align="center">
              		<input type="button" name="sr" value="검색">
             </div>
			<br> 
			<table width=100%>
				<tr>
					<td>
				입금 완료 리스트 | －검색결과 : 0건	－입금완료 결제금액 : 0원        
				<select id="size" name="size">
              		      <option value="5">5개출력</option>
               		  	  <option value="10">10개출력</option>
                		  <option value="15">15개출력</option>
                		  <option value="20">20개출력</option>
             	    </select>  
					</td> 
				</tr>                                                                      
			</table>
			<div align="right">
			－정렬 : 주문일 －－ | 결제금액 －－ | 주문번호 －－ | 주문인 －－  <input type="button" name="reset" value="초기화">
			</div>
			<br>
			<table width ="100%">
      		<tr>
      			<td colspan="9">
      				<hr width="100%">
      			</td>
      		</tr>
              <tr>
               <th><input type ="checkbox" name="chk_p"></th>
               <th width="7%">주문일시</th>
               <th width="27%">주문번호<br>(주문내역)</th>
               <th width="5%">주문인</th>
               <th width="12%">주문총액</th>
               <th width="9%">입금자</th>
               <th width="10%">입금예정일</th>
               <th width="10%">입금일</th>
               <th width="10%">입금통장</th>
            </tr>
            <tr>
      			<td colspan="9">
      				<hr width="100%">
      			</td>
      		</tr>
            <tr>
           		 <td colspan="9" align="center">
           		데이터가 없습니다..<br><br>
            </td>
            </tr>
            </table>
		</table>
	</div>
<%@ include file="../bottom.jsp" %> 