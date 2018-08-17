<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>상품재고관리</title>
	<link rel="stylesheet" type="text/css" href="../../../style.css">
</head>
<body>
	<div class="maintitle"><img src="../../../img/bul_title.gif"> 상품재고 관리</div>
	<pre></pre>
	<!--상품리스트-->
	<table cellpadding="0" cellspacing="1" border="0" width="100%" class="line2">
	    <tr><td colspan="2" class="box" height="5"></td></tr>
		<tr>
	        <td class="m1">분류 선택</td>
	        <td>
				<select id="good_type" name="good_type">
					<option value="0">일반상품　　</option>
					<option value="1">기획전</option>
				</select>
				<select id="good_cate1" name="good_cate1" size="1">
					<option value="">1차분류　　</option>
				</select>
				<select id="good_cate2" name="good_cate2" size="1" disabled>
					<option value="">2차분류　　</option>
				</select>
				<select id="good_cate3" name="good_cate3" size="1" disabled>
					<option value="">3차분류　　</option>
				</select>
				<select id="good_cate4" name="good_cate4" size="1" disabled>
					<option value="">4차분류　　</option>
				</select>
	        </td>
	    </tr>
	    <tr>
	    	<td class="m1">정렬방식</td>
	    	<td>
			<input type="radio" name="oc" value="good_name" CHECKED> 상품명
			<input type="radio" name="oc" value="good_code"> 상품코드
			<input type="radio" name="oc" value="good_reg_date"> 등록일
			&nbsp; | &nbsp;
			<input type="radio" name="os" value="ASC" CHECKED> 오름차순<img src="../../../img/btn_arrowUp.gif" align="absmiddle">
			<input type="radio" name="os" value="DESC"> 내림차순<img src="../../../img/btn_arrowDown.gif" align="absmiddle">
			</td>
	    </tr>
	    <tr>
	    	<td class="m1">재고상태</td>
			<td>
			<input type="radio" name="stock" value="0" CHECKED> 전체
			<input type="radio" name="stock" value="1"> 품절
			<input type="radio" name="stock" value="2"> 부족
			<input type="radio" name="stock" value="3"> 여유
			</td>
	    </tr>
	    <tr>
	        <td class="m1">검색어</td>
	        <td>
				<select name="sc">
					<option value="good_name">상품명</option>
					<option value="good_code">상품코드　　</option>
					<option value="good_tag">키워드</option>
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
			<td class="m1" width="100">현재분류</td>
			<td>일반상품</td>
		</tr>
	</table>
	
	<div>
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td>· 총 <span class="fc_red_b">??</span>개의 상품이 검색 되었습니다.</td>
		</tr>
	</table>
	</div>
	
	<!--테이블 header-->
	<div class="bgtbheader01">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
	            <th width="5%">번호</th>
	            <th width="17%">상품코드</th>
	            <th>상품명</th>
	            <th width="10%">판매가</th>
	            <th width="10%">재고</th>
	            <th width="10%">안전재고</th>
	            <th width="5%">옵션</th>
	            <th width="5%">진열</th>
	            <th width="10%">수정</th>
			</tr>
	

		</table>
	</div>
	
	<div class="alignCenter">
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
    	<tr>
            <td align="center">
            	<!-- 페이징 -->
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