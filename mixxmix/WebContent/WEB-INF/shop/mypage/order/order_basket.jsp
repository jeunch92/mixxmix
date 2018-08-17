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
            // �� ������ hide �� ���� �Ǹ޴� �������� show
            $('.tabPage').hide();
            $($('.current').find('a').attr('href')).show();
       
            // Tab �޴� Ŭ�� �̺�Ʈ ����
            $('li').click(function (event) {
               var tagName = event.target.tagName; // ���� ���õ� �±׳���
               var selectedLiTag = (tagName.toString() == 'A') ? $(event.target).parent('li') : $(event.target); // A�±��� ��� ���� Li�±� ����, Li�±��� ��� �״�� �±� ��ü
               var currentLiTag = $('li[class~=current]'); // ���� current Ŭ���׸� ���� ��
               var isCurrent = false;  
                
               // ���� Ŭ���� ���� current�� �������� Ȯ��
               isCurrent = $(selectedLiTag).hasClass('current');
                
               // current�� ������ �ʾ��� ��츸 ����
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
            // �� �ʱ�ȭ �� ����
            tabSetting();
         });
      </script>
   </head>
   <body>
      <div class="tabWrap" align="center">
         <ul class="tab_Menu">
            <li class="tabMenu current">
               <a href="#tabContent01" >������ۻ�ǰ(0)</a>
            </li>
            <li class="tabMenu">
               <a href="#tabContent02" >�ؿܹ�ۻ�ǰ(0)</a>
            </li>
         </ul>
         <div class="tab_Content_Wrap">
         
         <!-- ������� �� 1111111111111111111111 -->
         
            <div id="tabContent01" class="tabPage">
      
            <div align="center">
            <table>
            <br>
            <tr align="left">
               <td colspan="10">�Ϲݻ�ǰ</td>
            </tr>
            <tr>
               <td colspan="10">
                  <hr width="100%">
               </td>
            </tr>
              <tr>
               <th><input type ="checkbox" name="chk_p"></th>
               <th width="7%">�̹���</th>
               <th width="27%">�ǸŰ�</th>
               <th width="5%">����</th>
               <th width="12%">������</th>
               <th width="9%">��۱���</th>
               <th width="10%">��ۺ�</th>
               <th width="10%">�հ�</th>
               <th width="10%">����</th>
               <th width="10%">�ֹ�</th>
            </tr>
            <tr>
               <td colspan="10">
                  <hr width="100%">
               </td>
            </tr>
            <tr>
                  <td colspan="10" align="center">
                   ��ٱ��ϰ� ��� �ֽ��ϴ�.<br><br>
            </td>
            </tr>
            <tr>
                  <td colspan="9" align="center">
                        <input type="submit" name="bt_all" value ="��ü��ǰ�ֹ�">
                        <input type="submit" name="bt_select" value ="���û�ǰ�ֹ�">
                  </td>
                  <td>
                      <input type="submit" name="bt_back" value ="���ΰ���ϱ�">
                 </td>
            </tr>
            </table>
            </div>
            </div>
         <!-- ������� �� 1������������������������������������������������������-->
         
         
         <!-- ������� �� 222222222222222222222222-->
         
            <div id="tabContent02" class="tabPage">
            
            <div align="center">
            <table>
            <br>
            <tr align="left">
               <td colspan="10">�Ϲݻ�ǰ</td>
            </tr>
            <tr>
               <td colspan="10">
                  <hr width="100%">
               </td>
            </tr>
              <tr>
               <th><input type ="checkbox" name="chk_p"></th>
               <th width="7%">�̹���</th>
               <th width="27%">�ǸŰ�</th>
               <th width="5%">����</th>
               <th width="12%">������</th>
               <th width="9%">��۱���</th>
               <th width="10%">��ۺ�</th>
               <th width="10%">�հ�</th>
               <th width="10%">����</th>
               <th width="10%">�ֹ�</th>
            </tr>
            <tr>
               <td colspan="10">
                  <hr width="100%">
               </td>
            </tr>
            <tr>
                  <td colspan="10" align="center">
                   ��ٱ��ϰ� ��� �ֽ��ϴ�.<br><br>
            </td>
            </tr>
            <tr>
                  <td colspan="9" align="center">
                        <input type="submit" name="bt_all" value ="��ü��ǰ�ֹ�">
                        <input type="submit" name="bt_select" value ="���û�ǰ�ֹ�">
                  </td>
                  <td>
                      <input type="submit" name="bt_back" value ="���ΰ���ϱ�">
                 </td>
            </tr>
            </table>
            </div>
            </div>
            
         <!-- ������ �� 2��������������������������������������������-->
            
         
      </div>
     </div>
   </body>
</html>  