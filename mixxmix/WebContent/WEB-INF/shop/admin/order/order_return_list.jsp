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

<h2>반품관리</h2>
	<hr width="100%">
	<div align="center">
		<table  align="left" border="0" width="100%"><!-- 전체 테이블 -->
		<tr>
			<td align="left">반품신청 리스트</td>
		</tr>
		
		<tr>
			<td>
				<table width="100%" border="1"><!-- 첫번째 테이블 -->
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
		              
		             </table><!-- 첫번째 테이블 -->
		          </td>
		     </tr>
             <br>
             <tr>
             	<td>
             <div align="center">
              		<input type="button" name="sr" value="검색">
             </div>
             	</td>
             </tr>
			<br> 
			<tr><!-- 전체 테이블 tr -->
				<td>
 		   <div class="tab_Content_Wrap">
   <div class="container">
   <ul class="tabs">
      <li class="tab-link current" data-tab="tab-1">반품신청</li>
      <li class="tab-link" data-tab="tab-2">반송대기</li>
      <li class="tab-link" data-tab="tab-3">환불대기</li>
      <li class="tab-link" data-tab="tab-4">반품완료</li>
   </ul>
   <div id="tab-1" class="tab-content current">
   <table width="90%" >
      <tr>
					<td>
				주문취소 리스트 | －검색결과 : 0건	－검색결과 금액 : 0원        
				<select id="size" name="size">
              		      <option value="5">5개출력</option>
               		  	  <option value="10">10개출력</option>
                		  <option value="15">15개출력</option>
                		  <option value="20">20개출력</option>
             	    </select>  
					</td> 
				</tr> 
				<tr>
					<td>
						<tr>
        	 <td>
       			  <div align="right">
         		－정렬 : 주문일 －－ | 결제금액 －－ | 주문번호 －－ | 주문인 －－  <input type="button" name="reset" value="초기화">
     	    </div>
      	   </td>
     	 </tr>
			<br>
			<table width ="100%">
      		<tr>
      			<td colspan="8">
      				<hr width="100%">
      			</td>
      		</tr>
              <tr>
               <th width="5%"><input type ="checkbox" name="chk_p"></th>
               <th width="7%">주문시각</th>
               <th width="15%">취소시각</th>
               <th width="9%">주문인</th>
               <th width="18%">주문번호[취소상품]</th>
               <th width="9%">수량</th>
               <th width="10%">취소금액</th>
               <th width="10%">취소유형</th>
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
            <tr align="right">
            	<td colspan="9">
            		선택한 주문을
            		<input type="button" name="delete" value="삭제하기">
            	</td>
            </tr>
            </table>                                   
   </table>
   </div>
   <div id="tab-2" class="tab-content">
    <div align="center">
           <table width=100%><!-- 두번째 테이블 -->
				<tr>
					<td>
				반품 리스트 | －검색결과 : 0건	－검색결과 금액 : 0원        
				<select id="size" name="size">
              		      <option value="5">5개출력</option>
               		  	  <option value="10">10개출력</option>
                		  <option value="15">15개출력</option>
                		  <option value="20">20개출력</option>
             	    </select>  
					</td> 
				</tr> 
				<tr>
					<td>
						<tr>
        	 <td>
       			  <div align="right">
         		－정렬 : 주문일 －－ | 결제금액 －－ | 주문번호 －－ | 주문인 －－  <input type="button" name="reset" value="초기화">
     	    </div>
      	   </td>
     	 </tr>
			<br>
			<table width ="100%">
      		<tr>
      			<td colspan="7">
      				<hr width="100%">
      			</td>
      		</tr>
              <tr>
               <th width="5%"><input type ="checkbox" name="chk_p"></th>
               <th width="7%">신청일시</th>
               <th width="15%">반품번호</th>
               <th width="18%">주문번호[취소상품]</th>
               <th width="9%">주문인</th>
               <th width="10%">상품금액</th>
                <th width="10%">결제수단</th>
            </tr>
            <tr>
      			<td colspan="7">
      				<hr width="100%">
      			</td>
      		</tr>
            <tr>
           		 <td colspan="7" align="center">
           		데이터가 없습니다..<br><br>
            	 </td>
            </tr>
            <tr align="right">
            	<td colspan="7">
            		선택한 주문을
            		<input type="button" name="return" value="반송완료">  
            	</td>
            </tr>
            </table>                                                                 
			</table><!-- 두번째 테이블 -->
            </div>
            </div>
            <div id="tab-3" class="tab-content">
               <div align="center">
           <table width=100%><!-- 두번째 테이블 -->
				<tr>
					<td>
				반품 리스트 | －검색결과 : 0건	－검색결과 금액 : 0원        
				<select id="size" name="size">
              		      <option value="5">5개출력</option>
               		  	  <option value="10">10개출력</option>
                		  <option value="15">15개출력</option>
                		  <option value="20">20개출력</option>
             	    </select>  
					</td> 
				</tr> 
				<tr>
					<td>
						<tr>
        	 <td>
       			  <div align="right">
         		－정렬 : 주문일 －－ | 결제금액 －－ | 주문번호 －－ | 주문인 －－  <input type="button" name="reset" value="초기화">
     	    </div>
      	   </td>
     	 </tr>
			<br>
			<table width ="100%">
      		<tr>
      			<td colspan="7">
      				<hr width="100%">
      			</td>
      		</tr>
              <tr>
               <th width="5%">순번</th>
               <th width="7%">신청일시</th>
               <th width="15%">반품번호</th>
               <th width="18%">주문번호[취소상품]</th>
               <th width="9%">주문인</th>
               <th width="10%">상품금액</th>
                <th width="10%">결제수단</th>
            </tr>
            <tr>
      			<td colspan="7">
      				<hr width="100%">
      			</td>
      		</tr>
            <tr>
           		 <td colspan="7" align="center">
           		데이터가 없습니다..<br><br>
            	 </td>
            </tr>
            </table>                                                                 
			</table><!-- 두번째 테이블 -->
            </div>
            </div>
            <div id="tab-4" class="tab-content">
             <div align="center">
            <table width=100%><!-- 두번째 테이블 -->
				<tr>
					<td>
				반품 리스트 | －검색결과 : 0건	－검색결과 금액 : 0원        
				<select id="size" name="size">
              		      <option value="5">5개출력</option>
               		  	  <option value="10">10개출력</option>
                		  <option value="15">15개출력</option>
                		  <option value="20">20개출력</option>
             	    </select>  
					</td> 
				</tr> 
				<tr>
					<td>
						<tr>
        	 <td>
       			  <div align="right">
         		－정렬 : 주문일 －－ | 결제금액 －－ | 주문번호 －－ | 주문인 －－  <input type="button" name="reset" value="초기화">
     	    </div>
      	   </td>
     	 </tr>
			<br>
			<table width ="100%">
      		<tr>
      			<td colspan="8">
      				<hr width="100%">
      			</td>
      		</tr>
              <tr>
               <th width="5%">순번</th>
               <th width="7%">신청일시</th>
               <th width="15%">완료일시</th>
               <th width="15%">반품번호</th>
               <th width="18%">주문번호[취소상품]</th>
               <th width="9%">주문인</th>
               <th width="10%">환불방법</th>
                <th width="10%">환불금액</th>
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
			</table><!-- 두번째 테이블 -->
            </div>
            </div>
            
         <!-- 여부터 탭 4끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝ㅍ-->
         
     	 	</div>
     		 </div>
     		</td>
      </tr><!-- 전체 테이블 tr -->
     	
		</table>
	</div>
<%@ include file="../bottom.jsp" %> 