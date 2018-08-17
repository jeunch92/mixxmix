<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="../top.jsp" %> 

<head>
	<meta charset="EUC-KR">
   <style>
         body{
  margin-top: 100px;
  font-family: 'Trebuchet MS', serif;
  line-height: 1.6
}
.container{
  width: 100%;
  margin: 0 auto;
}
 
 
 
ul.tabs{
  margin: 0px;
  padding: 0px;
  list-style: none;
}
ul.tabs li{
  background: none;
  color: #222;
  display: inline-block;
  padding: 10px 15px;
  cursor: pointer;
}
 
ul.tabs li.current{
  background: #FFFFFF;
  color: #222;
}
 
.tab-content{
  display: none;
  background: #FFFFFF;
  padding: 15px;
}
 
.tab-content.current{
  display: inherit;
}

.bt_down{
   position:relative;
   left:70px;
   top:-15px;
   
}
.bt_up{
   position:relative;
   left:70px;
   top:-15px;
   
}
.num{
   position:relative;
   top:20px;
}
      </style>
    <script src='//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e0
      5d3c5f786c66b19939c4500ce446314d1748483e13.js'></script>
      <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
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
     <script>
     $(document).ready(function(){
          
          $('ul.tabs li').click(function(){
             var tab_id = $(this).attr('data-tab');

             $('ul.tabs li').removeClass('current');
             $('.tab-content').removeClass('current');

             $(this).addClass('current');
             $("#"+tab_id).addClass('current');
          })

       })
       $(function(){ 
           $('.bt_up').click(function(){ 
             var n = $('.bt_up').index(this);
             var num = $(".num:eq("+n+")").val();
             num = $(".num:eq("+n+")").val(num*1+1); 
              });
           $('.bt_down').click(function(){ 
             var n = $('.bt_down').index(this);
             var num = $(".num:eq("+n+")").val();
             num = $(".num:eq("+n+")").val(num*1-1); 
        });
}) 
      </script>
</head>

<h2>배송준비 리스트</h2>
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
				<th>처리일자</th>
				<td>
					<select id="search_keyword" name="keyword">
              		      <option value="order_date">주문일</option>
               		  	  <option value="pay_date">입금일</option>
                		  <option value="delivery_date">배송등록일</option>
                		  <option value="delivery_ok_date">배송완료일</option>
             	    </select>
					<input type="text" id="datepicker1" readonly> ~ <input type="text" id="datepicker2"readonly>
   						 <input type="button" id="r_today" name="today" value="오늘">
 						 <input type="button" id="r_week" name="week"  	value="일주일전">
 						 <input type="button" id="r_month" name="month" value="한달전">
             	</td>
              <tr>
             	<th>결제 수단</th>
             	<td>
             		<input type="checkbox" value="전체"> 전체
             		<input type="checkbox" value="신용카드"> 신용카드
             		<input type="checkbox" value="계좌이체"> 계좌이체
             		<input type="checkbox" value="가상계좌"> 가상계좌
             		<input type="checkbox" value="휴대폰"> 휴대폰
             		<input type="checkbox" value="무통장"> 무통장
             		<input type="checkbox" value="에스크로"> 에스크로
             		<input type="checkbox" value="전액할인"> 전액할인
             	</td>
             </tr>
              <tr>
             	<th>송장발행 여부</th>
             	<td>
             		<input type="checkbox" value="발행"> 발행
             		<input type="checkbox" value="미발행"> 미발행
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
      			<td colspan="8">
      				<hr width="100%">
      			</td>
      		</tr>
              <tr>
               <th><input type ="checkbox" name="chk_p"></th>
                <th width="7%">주문일시</th>
               <th width="27%">주문번호<br>(주문내역)</th>
               <th width="5%">주문인</th>
               <th width="12%">수령인</th>
               <th width="9%">결제총액</th>
               <th width="10%">배송정보</th>
               <th width="9%">신청서류</th>
            </tr>
            <tr>
      			<td colspan="8">
      				<hr width="100%">
      			</td>
      		</tr>
            <tr>
           		 <td colspan="8" align="center">
           		데이터가 없습니다..<br><br>
            </td>
            </tr>
            </table>
		</table>
	</div>
<%@ include file="../bottom.jsp" %> 