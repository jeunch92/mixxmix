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

<h2>�ֹ�����</h2>
	<hr width="100%">
	<div align="center">
		<table  align="left" border="1">
		<tr align="left">
			<td colspan="2" align="left">������ �ֹ�</td>
			<td colspan="2" align="left">��ǰ����</td>
		</tr>
			<tr valign="top">
				<td>
					<table border="1" align="left">
					<tr>
						<th align="left" width="20%">���� �ֹ�</th>
						<td align="left" width="30%">0��/(0��)</td>
					</tr>
					<tr>
						<th align="left" width="20%">�ֹ��ܰ躰 ��Ȳ</th>
						<td align="left" width="30%">�Աݴ��	 0��<br>����غ�		0��<br>ȯ�ҽ�û		0��<br>��ǰ��û		0��<br>��ȯ��û		0��</td>
					</tr>
					</table>
					</td>
				<td>
					<table border="1" align="left">
					<tr align="left">
						<th align="left" width="40%" >������ ��ǰ����</th>
						<td align="left" width="30%">�ٲٱ��ٲ�</td>
					</tr>
					</table>
				</td>
			</tr>
			<br>
			
			<tr>
				<td colspan="4">����üũ</td>
			</tr>
			<tr align="left">
				<td>
					<table border="1" align="left">
						<tr>
							<th align="left" width="20%">���ݿ����� ��û</th>
							<td colspan="3" align="left" width="100%">0��</td>
						</tr>
						<tr>
							<th align="left" width="20%">���ݰ�꼭 ��û</th>
							<td colspan="3" align="left" width="100%">0��</td>
						</tr>
						<tr>
							<th align="left" width="20%">��ó�� �ֹ����</th>
							<td colspan="3" align="left" width="100%">0��</td>
						</tr>
					</table>
				</td>
			</tr>
			<br>
			
			<tr>
				<td colspan="4" align="left">�ֹ����� ���� Ȯ��</td>
			</tr>
			<tr>
				<td>
					<table border="1" align="center">
						<tr>
							<th align="left" width="20%">PG�� ����</th>
							<td align="left" width="30%">�ô�����Ʈ(ID: )</td>
							<th align="left" width="20%">����ũ�� ����</th>
							<td align="left" width="30%">�����</td>
						</tr>
						<tr>
							<th align="left" width="20%">���ݿ�����</th>
							<td align="left" width="30%">������</td>
							<th align="left" width="20%">���ڼ��ݰ�꼭</th>
							<td align="left" width="30%">���(��������)</td>
						</tr>
						<tr>
							<th align="left" width="30%">�Ա� �� �ֹ��� ����</th>
							<td colspan="3" align="left" width="70%">�ֹ��Ϸκ��� 8�ϰ�� �� ���� �Աݵ��� ������ �ڵ����� �ֹ��� ��ҵ˴ϴ�.</td>
						</tr>
						<tr>
							<th align="left" width="30%">��� ���� ����</th>
							<td colspan="3" align="left" width="70%">�ֹ���û�� ��� �����մϴ�.</td>
						</tr>
						<tr>
							<th align="left" width="30%">��� �ڵ����� ����</th>
							<td colspan="3" align="left" width="70%">�ֹ��� ���/ȯ�ҵ� �� ��� �ڵ����� �����մϴ�.</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
<%@ include file="../bottom.jsp" %> 