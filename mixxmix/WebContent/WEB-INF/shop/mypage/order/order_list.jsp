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
               <a href="#tabContent01" >�ֹ�������ȸ(0)</a>
            </li>
            <li class="tabMenu">
               <a href="#tabContent02" >���/��ǰ/��ȯ ����(0)</a>
            </li>
         </ul>
         <div class="tab_Content_Wrap">
         
         <!-- ������� �� 1111111111111111111111 -->
         
            <div id="tabContent01" class="tabPage">
            <table border="1" cellpadding="20"> 
               <td>
               <select id="order_status" name="order_status" class="fSelect" >
                  <option value="all">��ü �ֹ�ó������</option>
                  <option value="shipped_before">�Ա���</option>
                  <option value="shipped_standby">����غ���</option>
                  <option value="shipped_begin">�����</option>
                  <option value="shipped_complate">��ۿϷ�</option>
                  <option value="order_cancel">���</option>
                  <option value="order_exchange">��ȯ</option>
                  <option value="order_return">��ǰ</option>
               </select>
                | ���� | 1���� | 1���� | 3���� | 6����  
               <input type="text" id="datepicker1" readonly> ~ <input type="text" id="datepicker2"readonly> ��ȸ
               </td>
            </table>
            <div align="left">
            <br>
            ���⺻������ �ֱ� 3�������� �ڷᰡ ��ȸ�Ǹ�, �Ⱓ �˻��� ���� �ֹ������� ��ȸ�Ͻ� �� �ֽ��ϴ�.<br>
            ���ֹ���ȣ�� Ŭ���Ͻø� �ش� �ֹ��� ���� �󼼳����� Ȯ���Ͻ� �� �ֽ��ϴ�.
            <br>
            </div>
      
            <div align="center">
            <table>
            <br>
            <tr align="left">
               <td colspan="7">�ֹ���ǰ����</td>
            </tr>
            <tr>
               <td colspan="7">
                  <hr width="100%">
               </td>
            </tr>
              <tr>
               <th>�ֹ�����<br>[�ֹ���ȣ]</th>
               <th width="7%">�̹���</th>
               <th width="35%">��ǰ����</th>
               <th width="5%">����</th>
               <th width="12%">��ǰ���űݾ�</th>
               <th width="12%">�ֹ�ó������</th>
               <th width="15%">���/��ȯ/��ǰ</th>
            </tr>
            <tr>
               <td colspan="7">
                  <hr width="100%">
               </td>
            </tr>
            <tr>
                  <td colspan="7" align="center">
                   �ֹ� ������ �����ϴ�.
            </td>
            </tr>
            </table>
            </div>
            </div>
         <!-- ������� �� 1������������������������������������������������������-->
         
         
         <!-- ������� �� 222222222222222222222222-->
         
            <div id="tabContent02" class="tabPage">
            <table border="1" cellpadding="20"> 
               <td>
                ���� | 1���� | 1���� | 3���� | 6����  
               <input type="text" id="datepicker3"readonly> ~ <input type="text" id="datepicker4"readonly> ��ȸ
               </td>
            </table>
            <div align="left">
            <br>
            ���⺻������ �ֱ� 3�������� �ڷᰡ ��ȸ�Ǹ�, �Ⱓ �˻��� ���� �ֹ������� ��ȸ�Ͻ� �� �ֽ��ϴ�.<br>
            ���ֹ���ȣ�� Ŭ���Ͻø� �ش� �ֹ��� ���� �󼼳����� Ȯ���Ͻ� �� �ֽ��ϴ�.
            <br>
            </div>
            <div align="center">
            <table>
            <br>
            <tr align="left">
               <td colspan="7">���/��ǰ/��ȯ<br></td>
              </tr>
            <tr>
               <td colspan="7">
                  <hr width="100%">
               </td>
            </tr>
              <tr>
               <th>�ֹ�����<br>[�ֹ���ȣ]</th>
               <th width="7%">�̹���</th>
               <th width="35%">��ǰ����</th>
               <th width="5%">����</th>
               <th width="12%">��ǰ���űݾ�</th>
               <th width="12%">�ֹ�ó������</th>
               <th width="15%">���/��ȯ/��ǰ</th>
            </tr>
            <tr>
               <td colspan="7">
                  <hr width="100%">
               </td>
            </tr>
            <tr>
                  <td colspan="7" align="center">
                   �ֹ� ������ �����ϴ�.
            </td>
            </tr>
            </table>
            </div>
            </div>
            
         <!-- ������ �� 2��������������������������������������������-->
            
         
      </div>
     </div>
   </body>
<%@ include file="../../../../bottom.jsp" %>