<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="../top.jsp" %>
<head>
   <script type="text/javascript">
      function prodtuc_delete(num){
         if (confirm("정말 삭제하시겠습니까??") == true){    //확인
            location.href="product_product_delete.pro?num="+num;
         }else{   //취소
             return;
         }
      }
   </script>
</head>
<body>
	<div class="maintitle"><img src="<%=request.getContextPath()%>/img/bul_title.gif"> 상품등록 관리</div>
	<pre></pre>
	<!--상품리스트-->
	<div class="subtitle"><img src="<%=request.getContextPath()%>/img/bul_06.gif" border="0"> 상품 리스트</div>
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
	    <tr>
	        <td class="m1">가격 조건</td>
	        <td>
				<select name="sc_price">
					<option value="good_price">판매가　　　</option>
					<option value="good_label_price">시중가</option>
					<option value="good_cost_price">매입가</option>
				</select>
	            <input type="text" name="ss_price_min" value="" size="20"> 원 ~ 
	            <input type="text" name="ss_price_max" value="" size="20"> 원
	        </td>
	    </tr>
	    <tr>
	        <td class="m1">등록일</td>
	        <td>
				<input type="text" id="good_sdate" name="good_sdate" value="" class="inputbox">
				- <input type="text" id="good_edate" name="good_edate" value="" class="inputbox">
				<a href="#" id="good_date_term1" mode="yesterday" sdate="good_sdate" edate="good_edate"><img src="<%=request.getContextPath()%>/img/btn_yesterday.gif" border="0"></a>
				<a href="#" id="good_date_term2" mode="this_day" sdate="good_sdate" edate="good_edate"><img src="<%=request.getContextPath()%>/img/btn_today.gif" border="0"></a>
				<a href="#" id="good_date_term3" mode="this_week" sdate="good_sdate" edate="good_edate"><img src="<%=request.getContextPath()%>/img/btn_thisWeek.gif" border="0"></a>
				<a href="#" id="good_date_term4" mode="this_month" sdate="good_sdate" edate="good_edate"><img src="<%=request.getContextPath()%>/img/btn_thisMonth.gif" border="0"></a>
				<a href="#" id="good_date_term5" mode="" sdate="good_sdate" edate="good_edate"><img src="<%=request.getContextPath()%>/img/btn_total.gif" border="0"></a>
			</td>
	    </tr>
	</table>
	&nbsp;
	<div align="center">
	<input type="image" src="<%=request.getContextPath()%>/img/btn_search.gif">
	</div>
	&nbsp;
	<!--검색갯수-->
	<div class="boxContainer">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td>
				· 검색결과 :　　　
				· 전체상품 :　　　
				· 안전재고 이하(부족) :　　<a href=""><img src="<%=request.getContextPath()%>/img/btn_view.gif" border="0"></a>　　
				</td>
				<td align="right" class="right">
					<select id="list_num" name="list_num">
						<option value="5">5개 출력</option>
	                    <option value="10">10개 출력</option>
	                    <option value="20">20개 출력</option>
	                    <option value="50">50개 출력</option>
	                    <option value="100">100개 출력</option>
					</select>
				</td>
			</tr>
		</table>
	</div>

	<!--정렬-->
	<div class="alignContainer01">
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
	    	<td align="right">
	        <table cellpadding="0" cellspacing="0" border="0">
	            <tr>
	                <td>
	                   	· 정렬 : 
	                  	 등록일 
	                    <a href="#" id="change_order00" oc="good_reg_date" os="desc"><img src="<%=request.getContextPath()%>/img/btn_arrowDown.gif" border="0"></a>
	                    <a href="#" id="change_order01" oc="good_reg_date" os="asc"><img src="<%=request.getContextPath()%>/img/btn_arrowUp.gif" border="0"></a>
	                    |
	                   	 상품명
	                    <a href="#" id="change_order02" oc="good_name" os="desc"><img src="<%=request.getContextPath()%>/img/btn_arrowDown.gif" border="0"></a>
	                    <a href="#" id="change_order03" oc="good_name" os="asc"><img src="<%=request.getContextPath()%>/img/btn_arrowUp.gif" border="0"></a>
	                    |
						가격
	                    <a href="#" id="change_order04" oc="good_price" os="desc"><img src="<%=request.getContextPath()%>/img/btn_arrowDown.gif" border="0"></a>
	                    <a href="#" id="change_order05" oc="good_price" os="asc"><img src="<%=request.getContextPath()%>/img/btn_arrowUp.gif" border="0"></a>
						<a href="#" id="change_order06" oc="good_reg_date" os="desc"><img src="<%=request.getContextPath()%>/img/btn_reset.gif" class="spaceL20" border="0"></a>
	                </td>
	            </tr>
	        </table>
	        </td>
		</tr>
	</table>    
	</div>
	
	<!--테이블 header-->
	<div class="bgtbheader01">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<th width="5%"><input type="checkbox" id="good_check_all"></th>
	            <th width="5%">번호</th>
	            <th>상품명</th>
	            <th width="18%">등록일</th>
	            <th width="12%">가격</th>
	            <th width="3%">진열</th>
	            <th width="5%">수정</th>
	            <th width="5%">삭제</th>
			</tr>
		<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="8">등록 된 상품이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr align="center">
				<td><input type="checkbox" name="ch"></td>
				<td>${dto.p_num}</td>
				<td><a href="product_content.view?num=${dto.p_num}&name=${dto.p_name}">${dto.p_name}</a></td>
				<td>${dto.p_regdate}</td>
				<td>${dto.p_price}</td>
				<td>진열</td>
				<td>수정</td>
				<td><input type="button" value="삭제하기" onclick="prodtuc_delete(${dto.p_num})"></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
    	<tr>
        	<td width="110"><a href="#" id="btn_good_modify_checked"><img src="<%=request.getContextPath()%>/img/btn_checkgoods_edit.gif" border="0"></a></td>
            <td align="center">
            	<!-- 페이징 -->
				<span class="paging">
					<a href="" class="first"><img src="<%=request.getContextPath()%>/img/btn_navi_arrLL.gif" border="0" align="absmiddle"></a>
					<a href="" class="pre"><img src="<%=request.getContextPath()%>/img/btn_navi_arrL.gif" border="0" align="absmiddle"></a>
					<a href="" class="on"> 1 </a>
					<a href="" class="normal"> 2 </a>
					<a href="" class="normal"> 3 </a>
					<a href="" class="next"><img src="<%=request.getContextPath()%>/img/btn_navi_arrR.gif" border="0" align="absmiddle"></a>
					<a href="" class="last"><img src="<%=request.getContextPath()%>/img/btn_navi_arrRR.gif" border="0" align="absmiddle"></a>
				</span>           
			</td>
            <td width="110" align="right"><a href=""><img src="<%=request.getContextPath()%>/img/btn_goodsAdd.gif" border="0"></a></td>
        </tr>
    </table>
	</div>
	
	
</body>
<%@ include file="../bottom.jsp" %>