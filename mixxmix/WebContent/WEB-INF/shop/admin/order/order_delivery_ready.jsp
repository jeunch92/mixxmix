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

<h2>����غ� ����Ʈ</h2>
	<hr width="100%">
	<div align="center">
		<table  align="left" border="0">
		<tr>
			<td align="left">�ֹ��˻�</td>
		</tr>
		<table width="100%" border="1">
			<tr>
				<th>�˻� Ű����</th>
				<td>
					<select id="search_keyword" name="keyword">
              		      <option value="order_number">�ֹ���ȣ</option>
               		  	  <option value="order_name">�ֹ��ڸ�</option>
                		  <option value="order_id">�ֹ���ID</option>
                		  <option value="moneysend_name">�Ա��ڸ�</option>
                		  <option value="pro_recent_name">������</option>
                		  <option value="--">--------</option>
                		  <option value="pro_name">��ǰ��</option>
                		  <option value="pro_number">��ǰ��ȣ</option>
                		  <option value="pro_maker">������ü</option>
             	    </select>
             			  <input type="text" name="name">
             	</td>
             </tr>
              <tr>
				<th>ó������</th>
				<td>
					<select id="search_keyword" name="keyword">
              		      <option value="order_date">�ֹ���</option>
               		  	  <option value="pay_date">�Ա���</option>
                		  <option value="delivery_date">��۵����</option>
                		  <option value="delivery_ok_date">��ۿϷ���</option>
             	    </select>
					<input type="text" id="datepicker1" readonly> ~ <input type="text" id="datepicker2"readonly>
   						 <input type="button" id="r_today" name="today" value="����">
 						 <input type="button" id="r_week" name="week"  	value="��������">
 						 <input type="button" id="r_month" name="month" value="�Ѵ���">
             	</td>
              <tr>
             	<th>���� ����</th>
             	<td>
             		<input type="checkbox" value="��ü"> ��ü
             		<input type="checkbox" value="�ſ�ī��"> �ſ�ī��
             		<input type="checkbox" value="������ü"> ������ü
             		<input type="checkbox" value="�������"> �������
             		<input type="checkbox" value="�޴���"> �޴���
             		<input type="checkbox" value="������"> ������
             		<input type="checkbox" value="����ũ��"> ����ũ��
             		<input type="checkbox" value="��������"> ��������
             	</td>
             </tr>
              <tr>
             	<th>������� ����</th>
             	<td>
             		<input type="checkbox" value="����"> ����
             		<input type="checkbox" value="�̹���"> �̹���
             	</td>
             </tr>
             </table>
             <br>
             <div align="center">
              		<input type="button" name="sr" value="�˻�">
             </div>
			<br> 
			<table width=100%>
				<tr>
					<td>
				�Ա� �Ϸ� ����Ʈ | ���˻���� : 0��	���ԱݿϷ� �����ݾ� : 0��        
				<select id="size" name="size">
              		      <option value="5">5�����</option>
               		  	  <option value="10">10�����</option>
                		  <option value="15">15�����</option>
                		  <option value="20">20�����</option>
             	    </select>  
					</td> 
				</tr>                                                                      
			</table>
			<div align="right">
			������ : �ֹ��� ���� | �����ݾ� ���� | �ֹ���ȣ ���� | �ֹ��� ����  <input type="button" name="reset" value="�ʱ�ȭ">
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
                <th width="7%">�ֹ��Ͻ�</th>
               <th width="27%">�ֹ���ȣ<br>(�ֹ�����)</th>
               <th width="5%">�ֹ���</th>
               <th width="12%">������</th>
               <th width="9%">�����Ѿ�</th>
               <th width="10%">�������</th>
               <th width="9%">��û����</th>
            </tr>
            <tr>
      			<td colspan="8">
      				<hr width="100%">
      			</td>
      		</tr>
            <tr>
           		 <td colspan="8" align="center">
           		�����Ͱ� �����ϴ�..<br><br>
            </td>
            </tr>
            </table>
		</table>
	</div>
<%@ include file="../bottom.jsp" %> 