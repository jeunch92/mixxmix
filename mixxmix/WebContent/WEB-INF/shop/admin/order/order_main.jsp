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

<h2>주문관리</h2>
	<hr width="100%">
	<div align="center">
		<table  align="left" border="1">
		<tr align="left">
			<td colspan="2" align="left">오늘의 주문</td>
			<td colspan="2" align="left">상품문의</td>
		</tr>
			<tr valign="top">
				<td>
					<table border="1" align="left">
					<tr>
						<th align="left" width="20%">오늘 주문</th>
						<td align="left" width="30%">0건/(0원)</td>
					</tr>
					<tr>
						<th align="left" width="20%">주문단계별 현황</th>
						<td align="left" width="30%">입금대기	 0건<br>배송준비		0건<br>환불신청		0건<br>반품신청		0건<br>교환신청		0건</td>
					</tr>
					</table>
					</td>
				<td>
					<table border="1" align="left">
					<tr align="left">
						<th align="left" width="40%" >오늘의 상품문의</th>
						<td align="left" width="30%">꾸꾸까까꾸꾸</td>
					</tr>
					</table>
				</td>
			</tr>
			<br>
			
			<tr>
				<td colspan="4">할일체크</td>
			</tr>
			<tr align="left">
				<td>
					<table border="1" align="left">
						<tr>
							<th align="left" width="20%">현금영수증 신청</th>
							<td colspan="3" align="left" width="100%">0건</td>
						</tr>
						<tr>
							<th align="left" width="20%">세금계산서 신청</th>
							<td colspan="3" align="left" width="100%">0건</td>
						</tr>
						<tr>
							<th align="left" width="20%">미처리 주문상담</th>
							<td colspan="3" align="left" width="100%">0건</td>
						</tr>
					</table>
				</td>
			</tr>
			<br>
			
			<tr>
				<td colspan="4" align="left">주문관련 설정 확인</td>
			</tr>
			<tr>
				<td>
					<table border="1" align="center">
						<tr>
							<th align="left" width="20%">PG사 정보</th>
							<td align="left" width="30%">올더게이트(ID: )</td>
							<th align="left" width="20%">에스크로 서비스</th>
							<td align="left" width="30%">사용중</td>
						</tr>
						<tr>
							<th align="left" width="20%">현금영수증</th>
							<td align="left" width="30%">사용안함</td>
							<th align="left" width="20%">전자세금계산서</th>
							<td align="left" width="30%">사용(직접발행)</td>
						</tr>
						<tr>
							<th align="left" width="30%">입금 전 주문서 보관</th>
							<td colspan="3" align="left" width="70%">주물일로부터 8일경과 후 까지 입금되지 않으면 자동으로 주문이 취소됩니다.</td>
						</tr>
						<tr>
							<th align="left" width="30%">재고 감소 시점</th>
							<td colspan="3" align="left" width="70%">주문신청시 재고가 감소합니다.</td>
						</tr>
						<tr>
							<th align="left" width="30%">재고 자동복구 설정</th>
							<td colspan="3" align="left" width="70%">주문이 취소/환불될 때 재고를 자동으로 복구합니다.</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
<%@ include file="../bottom.jsp" %> 