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

	<h2>�Աݴ�� ����Ʈ</h2>
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
				<th>�Աݰ��� ���˻�</th>
				<td>
					<select id="search_keyword" name="keyword">
              			<option value="tongjang_number">[����]3520229595253 ������:������</option>
             		</select>
             		<input type="submit" name="tongjang" value="�����߰�/����">
             	</td>
              <tr>
              <tr>
				<th>�ֹ���¥</th>
				<td>
					<input type="text" id="datepicker1" readonly> ~ <input type="text" id="datepicker2"readonly>
   						 <input type="button" id="r_today" name="today" value="����">
 						 <input type="button" id="r_week" name="week"  	value="��������">
 						 <input type="button" id="r_month" name="month" value="�Ѵ���">
             	</td>
              <tr>
             	<th>���� ����</th>
             	<td>
             		<input type="radio" value="��ü"> ��ü
             		<input type="radio" value="�ſ�ī��"> �ſ�ī��
             		<input type="radio" value="������ü"> ������ü
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
      			<td colspan="9">
      				<hr width="100%">
      			</td>
      		</tr>
              <tr>
               <th><input type ="checkbox" name="chk_p"></th>
               <th width="7%">�ֹ��Ͻ�</th>
               <th width="27%">�ֹ���ȣ<br>(�ֹ�����)</th>
               <th width="5%">�ֹ���</th>
               <th width="12%">�ֹ��Ѿ�</th>
               <th width="9%">�Ա���</th>
               <th width="10%">�Աݿ�����</th>
               <th width="10%">�Ա���</th>
               <th width="10%">�Ա�����</th>
            </tr>
            <tr>
      			<td colspan="9">
      				<hr width="100%">
      			</td>
      		</tr>
            <tr>
           		 <td colspan="9" align="center">
           		�����Ͱ� �����ϴ�..<br><br>
            </td>
            </tr>
            </table>
		</table>
	</div>
<%@ include file="../bottom.jsp" %> 