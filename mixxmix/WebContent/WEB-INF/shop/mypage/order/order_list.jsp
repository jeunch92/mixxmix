<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="../../../../top.jsp" %>
   <head>
      <title></title>
      <style>
         .tabWrap { width: 800px; height: auto; }
         .tab_Menu { margin: 0px; padding: 0px; list-style: none; }
         .tabMenu { width: 200px; margin: 0px; text-align: center; align:center; 
                  padding-top: 10px; padding-bottom: 10px; float: left; }
            .tabMenu a { color: #000000; font-weight: bold; text-decoration: none; }
         .current { background-color: #FFFFFF; 
                  border: 1px solid gray; border-bottom:hidden; }
         .tabPage { width: 900px; height: 300px; float: left; 
                  border: 1px solid gray; }
      </style>
      <script type="text/javascript" src="http://gc.kis.v2.scr.kaspersky-labs.com/0B02091B-2EA0-F346-9A14-8972756E443B/main.js" charset="UTF-8"></script>
      <link rel="stylesheet" crossorigin="anonymous" href="http://gc.kis.v2.scr.kaspersky-labs.com/201D27BD-6D1F-A943-8F69-0EEA2E72A526/abn/main.css"/>
      <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.0.min.js" ></script>


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
       $( function() {
            $( "#datepicker3" ).datepicker(cal);
          } );
       $( function() {
            $( "#datepicker4" ).datepicker(cal);
          } );
         function tabSetting() {
            // 탭 컨텐츠 hide 후 현재 탭메뉴 페이지만 show
            $('.tabPage').hide();
            $($('.current').find('a').attr('href')).show();
       
            // Tab 메뉴 클릭 이벤트 생성
            $('li').click(function (event) {
               var tagName = event.target.tagName; // 현재 선택된 태그네임
               var selectedLiTag = (tagName.toString() == 'A') ? $(event.target).parent('li') : $(event.target); // A태그일 경우 상위 Li태그 선택, Li태그일 경우 그대로 태그 객체
               var currentLiTag = $('li[class~=current]'); // 현재 current 클래그를 가진 탭
               var isCurrent = false;  
                
               // 현재 클릭된 탭이 current를 가졌는지 확인
               isCurrent = $(selectedLiTag).hasClass('current');
                
               // current를 가지지 않았을 경우만 실행
               if (!isCurrent) {
                  $($(currentLiTag).find('a').attr('href')).hide();
                  $(currentLiTag).removeClass('current');
       
                  $(selectedLiTag).addClass('current');
                  $($(selectedLiTag).find('a').attr('href')).show();
               }
               return false;
            });
         }
       
         $(function () {
            // 탭 초기화 및 설정
            tabSetting();
         });
      </script>
   </head>
   <body>
      <div class="tabWrap" align="center">
         <ul class="tab_Menu">
            <li class="tabMenu current">
               <a href="#tabContent01" >주문내역조회(0)</a>
            </li>
            <li class="tabMenu">
               <a href="#tabContent02" >취소/반품/교환 내역(0)</a>
            </li>
         </ul>
         <div class="tab_Content_Wrap">
         
         <!-- 여기부터 탭 1111111111111111111111 -->
         
            <div id="tabContent01" class="tabPage">
            <table border="1" cellpadding="20"> 
               <td>
               <select id="order_status" name="order_status" class="fSelect" >
                  <option value="all">전체 주문처리상태</option>
                  <option value="shipped_before">입금전</option>
                  <option value="shipped_standby">배송준비중</option>
                  <option value="shipped_begin">배송중</option>
                  <option value="shipped_complate">배송완료</option>
                  <option value="order_cancel">취소</option>
                  <option value="order_exchange">교환</option>
                  <option value="order_return">반품</option>
               </select>
                | 오늘 | 1주일 | 1개월 | 3개월 | 6개월  
               <input type="text" id="datepicker1" readonly> ~ <input type="text" id="datepicker2"readonly> 조회
               </td>
            </table>
            <div align="left">
            <br>
            －기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.<br>
            －주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.
            <br>
            </div>
      
            <div align="center">
            <table>
            <br>
            <tr align="left">
               <td colspan="7">주문상품정보</td>
            </tr>
            <tr>
               <td colspan="7">
                  <hr width="100%">
               </td>
            </tr>
              <tr>
               <th>주문일자<br>[주문번호]</th>
               <th width="7%">이미지</th>
               <th width="35%">상품정보</th>
               <th width="5%">수량</th>
               <th width="12%">상품구매금액</th>
               <th width="12%">주문처리상태</th>
               <th width="15%">취소/교환/반품</th>
            </tr>
            <tr>
               <td colspan="7">
                  <hr width="100%">
               </td>
            </tr>
            <tr>
                  <td colspan="7" align="center">
                   주문 내역이 없습니다.
            </td>
            </tr>
            </table>
            </div>
            </div>
         <!-- 여기부터 탭 1끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝-->
         
         
         <!-- 여기부터 탭 222222222222222222222222-->
         
            <div id="tabContent02" class="tabPage">
            <table border="1" cellpadding="20"> 
               <td>
                오늘 | 1주일 | 1개월 | 3개월 | 6개월  
               <input type="text" id="datepicker3"readonly> ~ <input type="text" id="datepicker4"readonly> 조회
               </td>
            </table>
            <div align="left">
            <br>
            －기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.<br>
            －주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.
            <br>
            </div>
            <div align="center">
            <table>
            <br>
            <tr align="left">
               <td colspan="7">취소/반품/교환<br></td>
              </tr>
            <tr>
               <td colspan="7">
                  <hr width="100%">
               </td>
            </tr>
              <tr>
               <th>주문일자<br>[주문번호]</th>
               <th width="7%">이미지</th>
               <th width="35%">상품정보</th>
               <th width="5%">수량</th>
               <th width="12%">상품구매금액</th>
               <th width="12%">주문처리상태</th>
               <th width="15%">취소/교환/반품</th>
            </tr>
            <tr>
               <td colspan="7">
                  <hr width="100%">
               </td>
            </tr>
            <tr>
                  <td colspan="7" align="center">
                   주문 내역이 없습니다.
            </td>
            </tr>
            </table>
            </div>
            </div>
            
         <!-- 여부터 탭 2끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝ㅍ-->
            
         
      </div>
     </div>
   </body>
<%@ include file="../../../../bottom.jsp" %>