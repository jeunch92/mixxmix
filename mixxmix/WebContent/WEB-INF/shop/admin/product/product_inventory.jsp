<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>��ǰ������</title>
	<link rel="stylesheet" type="text/css" href="../../../style.css">
</head>
<body>
	<div class="maintitle"><img src="../../../img/bul_title.gif"> ��ǰ��� ����</div>
	<pre></pre>
	<!--��ǰ����Ʈ-->
	<table cellpadding="0" cellspacing="1" border="0" width="100%" class="line2">
	    <tr><td colspan="2" class="box" height="5"></td></tr>
		<tr>
	        <td class="m1">�з� ����</td>
	        <td>
				<select id="good_type" name="good_type">
					<option value="0">�Ϲݻ�ǰ����</option>
					<option value="1">��ȹ��</option>
				</select>
				<select id="good_cate1" name="good_cate1" size="1">
					<option value="">1���з�����</option>
				</select>
				<select id="good_cate2" name="good_cate2" size="1" disabled>
					<option value="">2���з�����</option>
				</select>
				<select id="good_cate3" name="good_cate3" size="1" disabled>
					<option value="">3���з�����</option>
				</select>
				<select id="good_cate4" name="good_cate4" size="1" disabled>
					<option value="">4���з�����</option>
				</select>
	        </td>
	    </tr>
	    <tr>
	    	<td class="m1">���Ĺ��</td>
	    	<td>
			<input type="radio" name="oc" value="good_name" CHECKED> ��ǰ��
			<input type="radio" name="oc" value="good_code"> ��ǰ�ڵ�
			<input type="radio" name="oc" value="good_reg_date"> �����
			&nbsp; | &nbsp;
			<input type="radio" name="os" value="ASC" CHECKED> ��������<img src="../../../img/btn_arrowUp.gif" align="absmiddle">
			<input type="radio" name="os" value="DESC"> ��������<img src="../../../img/btn_arrowDown.gif" align="absmiddle">
			</td>
	    </tr>
	    <tr>
	    	<td class="m1">������</td>
			<td>
			<input type="radio" name="stock" value="0" CHECKED> ��ü
			<input type="radio" name="stock" value="1"> ǰ��
			<input type="radio" name="stock" value="2"> ����
			<input type="radio" name="stock" value="3"> ����
			</td>
	    </tr>
	    <tr>
	        <td class="m1">�˻���</td>
	        <td>
				<select name="sc">
					<option value="good_name">��ǰ��</option>
					<option value="good_code">��ǰ�ڵ塡��</option>
					<option value="good_tag">Ű����</option>
				</select>
	            <input type="text" name="ss" value="" size="65">
	        </td>
	    </tr>
	</table>
	&nbsp;
	<div align="center">
	<input type="image" src="../../../img/btn_search.gif">
	</div>
	&nbsp;
	<table cellpadding="0" cellspacing="1" border="0" width="100%" class="line2">
		<tr><td colspan="2" class="box" height="5"></td></tr>
		<tr>
			<td class="m1" width="100">����з�</td>
			<td>�Ϲݻ�ǰ</td>
		</tr>
	</table>
	
	<div>
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td>�� �� <span class="fc_red_b">??</span>���� ��ǰ�� �˻� �Ǿ����ϴ�.</td>
		</tr>
	</table>
	</div>
	
	<!--���̺� header-->
	<div class="bgtbheader01">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
	            <th width="5%">��ȣ</th>
	            <th width="17%">��ǰ�ڵ�</th>
	            <th>��ǰ��</th>
	            <th width="10%">�ǸŰ�</th>
	            <th width="10%">���</th>
	            <th width="10%">�������</th>
	            <th width="5%">�ɼ�</th>
	            <th width="5%">����</th>
	            <th width="10%">����</th>
			</tr>
	

		</table>
	</div>
	
	<div class="alignCenter">
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
    	<tr>
            <td align="center">
            	<!-- ����¡ -->
				<span class="paging">
					<a href="" class="first"><img src="../../../img/btn_navi_arrLL.gif" border="0" align="absmiddle"></a>
					<a href="" class="pre"><img src="../../../img/btn_navi_arrL.gif" border="0" align="absmiddle"></a>
					<a href="" class="on"> 1 </a>
					<a href="" class="normal"> 2 </a>
					<a href="" class="normal"> 3 </a>
					<a href="" class="next"><img src="../../../img/btn_navi_arrR.gif" border="0" align="absmiddle"></a>
					<a href="" class="last"><img src="../../../img/btn_navi_arrRR.gif" border="0" align="absmiddle"></a>
				</span>           
			</td>
        </tr>
    </table>
	</div>
	
	<table width="100%" border="0">
	<tr>
		<td align="center"><a href="#" id="good_stock_modify_all"><img src="../../../img/btn_allApply.gif" border="0"></a></td>
	</tr>
	</table>
</body>
</html>