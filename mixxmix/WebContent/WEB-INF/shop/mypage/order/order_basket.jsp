<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>   
<link rel="stylesheet" type="text/css" href="../../../../style.css">
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
               <a href="#tabContent01" >국내배송상품(0)</a>
            </li>
            <li class="tabMenu">
               <a href="#tabContent02" >해외배송상품(0)</a>
            </li>
         </ul>
         <div class="tab_Content_Wrap">
         
         <!-- 여기부터 탭 1111111111111111111111 -->
         
            <div id="tabContent01" class="tabPage">
      
            <div align="center">
            <table>
            <br>
            <tr align="left">
               <td colspan="10">일반상품</td>
            </tr>
            <tr>
               <td colspan="10">
                  <hr width="100%">
               </td>
            </tr>
              <tr>
               <th><input type ="checkbox" name="chk_p"></th>
               <th width="7%">이미지</th>
               <th width="27%">판매가</th>
               <th width="5%">수량</th>
               <th width="12%">적립금</th>
               <th width="9%">배송구분</th>
               <th width="10%">배송비</th>
               <th width="10%">합계</th>
               <th width="10%">선택</th>
               <th width="10%">주문</th>
            </tr>
            <tr>
               <td colspan="10">
                  <hr width="100%">
               </td>
            </tr>
            <tr>
                  <td colspan="10" align="center">
                   장바구니가 비어 있습니다.<br><br>
            </td>
            </tr>
            <tr>
                  <td colspan="9" align="center">
                        <input type="submit" name="bt_all" value ="전체상품주문">
                        <input type="submit" name="bt_select" value ="선택상품주문">
                  </td>
                  <td>
                      <input type="submit" name="bt_back" value ="쇼핑계속하기">
                 </td>
            </tr>
            </table>
            </div>
            </div>
         <!-- 여기부터 탭 1끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝-->
         
         
         <!-- 여기부터 탭 222222222222222222222222-->
         
            <div id="tabContent02" class="tabPage">
            
            <div align="center">
            <table>
            <br>
            <tr align="left">
               <td colspan="10">일반상품</td>
            </tr>
            <tr>
               <td colspan="10">
                  <hr width="100%">
               </td>
            </tr>
              <tr>
               <th><input type ="checkbox" name="chk_p"></th>
               <th width="7%">이미지</th>
               <th width="27%">판매가</th>
               <th width="5%">수량</th>
               <th width="12%">적립금</th>
               <th width="9%">배송구분</th>
               <th width="10%">배송비</th>
               <th width="10%">합계</th>
               <th width="10%">선택</th>
               <th width="10%">주문</th>
            </tr>
            <tr>
               <td colspan="10">
                  <hr width="100%">
               </td>
            </tr>
            <tr>
                  <td colspan="10" align="center">
                   장바구니가 비어 있습니다.<br><br>
            </td>
            </tr>
            <tr>
                  <td colspan="9" align="center">
                        <input type="submit" name="bt_all" value ="전체상품주문">
                        <input type="submit" name="bt_select" value ="선택상품주문">
                  </td>
                  <td>
                      <input type="submit" name="bt_back" value ="쇼핑계속하기">
                 </td>
            </tr>
            </table>
            </div>
            </div>
            
         <!-- 여부터 탭 2끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝끝ㅍ-->
            
         
      </div>
     </div>
   </body>
</html>  