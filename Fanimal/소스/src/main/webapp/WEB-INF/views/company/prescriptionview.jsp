<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prescriptionview</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>

#main {
	margin: 0 auto;
}

#main h1 {
	padding-top: 30px;
	align-content: center;
	text-align: center;
	margin: 0;
	padding-bottom: 20px;
	margin-bottom: 5px;
}

#bc {
	background-color: white;
	width: 960px;
	margin-left: auto;
	margin-right: auto;
	padding: 10px;
}

#list1 {
	background-color: rgb(196, 192, 192);
	border-collapse: collapse;
	width: 940px;
	margin-bottom: 10px;
	margin-left: auto;
	margin-right: auto;
}

#list1 th, #list1 td {
	border: 1px solid #444;
	padding: 5px;
	font-size: 16px;
}

#list1 .col1 {
	width: 150px;
	border-left: 0px;
	text-align: center;
}

#list1 .col2 {
	width: 25px;
	text-align: center;
	border-left: 0px;
	border-right: 0px;
}

#list1 .col3 {
	width: 50px;
	padding-left: 25px;
	text-align: center;
	border-right: 0px;
}

#list1 .col4 {
	width: 50px;
	padding-left: 25px;
	text-align: center;
	border-left: 0px;
	border-right: 0px;
}

#list1 .col5 {
	width: 50px;
	padding-left: 25px;
	text-align: center;
	border-left: 0px;
	border-right: 0px;
}

#list1 .col6 {
	width: 150px;
	text-align: center;
}

#list1 .col7 {
	width: 250px;
	border-right: 0px;
	text-align: center;
}

#list2 {
	border: 1px solid #ccc;
	border-collapse: collapse;
	border-left: 0px;
	border-right: 0px;
	width: 940px;
	margin-bottom: 10px;
	margin-left: auto;
	margin-right: auto;
}

#list2 th, #list2 td {
	border: 1px solid #82878c;
	border-left: 0px;
	border-right: 0px;
	padding: 5px;
	font-size: 16px;
	
}

#list2 .col1 {
	width: 150px;
}

#list2 .col2 {
	width: 150px;
	text-align: center;
}

#list2 .col3 {
	width: 50px;
	text-align: center;
}

#list2 .col4 {
	width: 100px;
	text-align: center;
}

#list2 .col5 {
	padding-left: 100px;
}
#list3 {
	border-collapse: collapse;
	border-top: 4px solid #444;
	width: 940px;
	margin-bottom: 10px;
	margin-left: auto;
	margin-right: auto;
}

#list3 th, #list3 td {
	border: 1px solid #444;
	padding: 5px;
	font-size: 16px;
	text-align: center;
}

#list3 .col1 {
	width: 176px;
	border-left: 0px;
}

#list3 .col2 {
	width: 176px;
}

#list3 .col3 {
	width: 176px;
}

#list3 .col4 {
	width: 176px;
}

#list3 .col5 {
	width: 200px;
	border-right: 0px;
}

#list3 .col6 {
	width: 35px;
	border-left: 0px;
	border-right: 0px;
	text-align: left;
}

#list3 .col7 {
	width: 40px;
	border-left: 0px;
	border-right: 0px;
}

#list4 {
	border-collapse: collapse;
	width: 940px;
	margin-left: auto;
	margin-right: auto;
}

#list4 th, #list4 td {
	border: 1px solid #444;
	padding: 5px;
	font-size: 16px;
	text-align: center;
	border-bottom: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list4 .col1 {
	width: 154px;
	border-left: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list4 .col2 {
	width: 126px;
	margin-left: auto;
	margin-right: auto;
}

#list4 .col3 {
	width: 300px;
	margin-left: auto;
	margin-right: auto;
}

#list4 .col4 {
	width: 180px;
	margin-left: auto;
	margin-right: auto;
}

#list4 .col5 {
	width: 240px;
	border-right: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list5 {
	border-collapse: collapse;
	border-bottom: 4px solid #444;
	width: 940px;
	margin-bottom: 15px;
	margin-left: auto;
	margin-right: auto;
}

#list5 th, #list5 td {
	border: 1px solid #444;
	padding: 5px;
	font-size: 16px;
	text-align: center;
}

#list5 .col1 {
	width: 145px;
	border-left: 0px;
}

#list5 .col2 {
	width: 119px;
	margin-left: auto;
	margin-right: auto;
}

#list5 .col3 {
	width: 158px;
	padding-left: 10px;
	border-right: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list5 .col4 {
	width: 123px;
	border-left: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list5 .col5 {
	width: 170px;
	margin-left: auto;
	margin-right: auto;
}

#list5 .col6 {
	width: 39px;
	border-right: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list5 .col7 {
	width: 142px;
	border-left: 0px;
	border-right: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list5 .col8 {
	width: 45px;
	border-left: 0px;
	border-right: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list6 {
	border: 1px solid #444;
	border-collapse: collapse;
	width: 940px;
	margin-bottom: 10px;
	border-left: 0px;
	border-right: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list6 th, #list6 td {
	border: 1px solid #444;
	padding: 5px;
	font-size: 16px;
}

#list6 .col1 {
	width: 50px;
	border-left: 0px;
	text-align: center;
}

#list6 .col2 {
	border-bottom: 0px;
	text-align: center;
}

#list6 .col3 {
	width: 128px;
	text-align: center;
}

#list6 .col4 {
	width: 60px;
	text-align: center;
}

#list6 .col5, .col10 {
	width: 100px;
	text-align: center;
}

#list6 .col6 {
	width: 50px;
	border-right: 0px;
	text-align: center;
}

#list6 .col7 {
	width: 134px;
}

#list6 .col8 {
	width: 303px;
	border-top: 0px;
	word-break: break-all;
}

#list6 .col9 {
	width: 247px;
	text-align: center;
}

#list6 .col10 {
	border-top: 0px;
	padding-top: 0px;
}

#list6 .col5 {
	border-bottom: 0px;
	padding-bottom: 0px;
}

#list7 {
	border: 1px solid #444;
	border-collapse: collapse;
	width: 940px;
	margin-bottom: 10px;
	border-left: 0px;
	border-right: 0px;
	margin-left: auto;
	margin-right: auto;
}

#list7 th, #list7 td {
	border: 1px solid #444;
	padding: 5px;
	font-size: 16px;
	border-left: 0px;
	border-right: 0px;
}

#list7 .col1 {
	font-weight: bold;
	background-color: rgb(196, 192, 192);
}

#list7 .col2 {
	height: 100px;
}
</style>
</head>
<body>

	<main>
		<%@ include file="/WEB-INF/views/inc/companyheader.jsp"%>

		<section id="main">
			<h1>
				<i class="fa-solid fa-paw"></i> ?????????
			</h1>
			<div id ="bc">
			<br>	
			<table id="list1">
				<tbody>
					<tr>
						<th class="col1" id="lc1">?????? ?????????</th>
						<th class="col3">2022</th>
						<th class="col2">???</th>
						<th class="col4">7</th>
						<th class="col2">???</th>
						<th class="col5">22</th>
						<th class="col2">???</th>
						<th class="col6">????????????</th>
						<th class="col7">??? 1234567891234 ???</th>
					</tr>
				</tbody>
			</table>

			<table id="list2">
				<tbody>
					<tr>
						<th class="col1">????????? ????????????</th>
						<th class="col2">??????????????? (</th>
						<th class="col3">7 </th>
						<th class="col4">)??????</th>
						<th class="col5">????????? ???????????? ?????? ???????????? ?????????.</th>
					</tr>
				</tbody>
			</table>

			<table id="list3">
				<tbody>
					<tr>
						<td class="col1" rowspan="3">?????? ??????</td>
						<td class="col2">????????? ??????</td>
						<td colspan="6">??????</td>
						<td class="col3" rowspan="3">?????? ?????????</td>
						<td class="col4">??? ???</td>
						<td class="col5" colspan="3">?????????</td>
					</tr>
					<tr>
						<td class="col2">????????? ??????</td>
						<td colspan="6">????????? ??????</td>
						<td class="col4">????????????</td>
						<td class="col5" colspan="3">010-5292-9056</td>
					</tr>
					<tr>
						<td class="col2">??????/??????/??????</td>
						<td class="col7">???</td>
						<td class="col6">/</td>
						<td class="col7">20</td>
						<td class="col6">??? /</td>
						<td class="col7">12</td>
						<td class="col6">kg</td>
						<td class="col4">????????????</td>
						<td class="col5">960519</td>
					</tr>
				</tbody>
			</table>

			<table id="list4">
				<tbody>
					<tr>
						<td class="col1">?????? ??????</td>
						<td class="col2">??? ???</td>
						<td class="col3">?????????????????????</td>
						<td class="col4">????????????</td>
						<td class="col5">02-457-7896</td>
					</tr>
				</tbody>
			</table>

			<table id="list5">
				<tbody>
					<tr>
						<td class="col1">?????? ?????????</td>
						<td class="col2">??? ???</td>
						<td class="col3">???????????????</td>
						<td class="col4">(??????/??????)</td>
						<td class="col5">????????? ????????????</td>
						<td class="col6">???</td>
						<td class="col7">1234567891234</td>
						<td class="col8">???</td>
					</tr>
				</tbody>
			</table>

			<table id="list6">
				<tbody>
					<tr>
						<th class="col1" rowspan="2">??????</th>
						<th class="col2" colspan="2">?????????</th>
						<th class="col3" rowspan="2">??????</th>
						<th class="col4" rowspan="2">??????</th>
						<th class="col5">????????????</th>
						<th class="col6" rowspan="2">??????</th>
					</tr>
					<tr>
						<th class="col8">&nbsp;</th>
						<th class="col9">?????? ?????????</th>
						<th class="col10">(????????????)</th>
					</tr>
					<tr>
						<th class="col1" rowspan="3">1</th>
						<th class="col8" rowspan="3">??????</th>
						<th class="col9">????????????~~</th>
						<th class="col3" rowspan="3">3</th>
						<th class="col4" rowspan="3">3</th>
						<th class="col5" rowspan="3">3</th>
						<th class="col6" rowspan="3"></th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col1" rowspan="3">1</th>
						<th class="col8" rowspan="3">??????~~</th>
						<th class="col9">????????????~~</th>
						<th class="col3" rowspan="3">3</th>
						<th class="col4" rowspan="3">3</th>
						<th class="col5" rowspan="3">3</th>
						<th class="col6" rowspan="3"></th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col1" rowspan="3">1</th>
						<th class="col8" rowspan="3">??????~~</th>
						<th class="col9">????????????~~</th>
						<th class="col3" rowspan="3">3</th>
						<th class="col4" rowspan="3">3</th>
						<th class="col5" rowspan="3">3</th>
						<th class="col6" rowspan="3"></th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col1" rowspan="3">1</th>
						<th class="col8" rowspan="3">??????~~</th>
						<th class="col9">????????????~~</th>
						<th class="col3" rowspan="3">3</th>
						<th class="col4" rowspan="3">3</th>
						<th class="col5" rowspan="3">3</th>
						<th class="col6" rowspan="3"></th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col1" rowspan="3">1</th>
						<th class="col8" rowspan="3">??????~~</th>
						<th class="col9">????????????~~</th>
						<th class="col3" rowspan="3">3</th>
						<th class="col4" rowspan="3">3</th>
						<th class="col5" rowspan="3">3</th>
						<th class="col6" rowspan="3"></th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col1" rowspan="3">1</th>
						<th class="col8" rowspan="3">??????~~</th>
						<th class="col9">????????????~~</th>
						<th class="col3" rowspan="3">3</th>
						<th class="col4" rowspan="3">3</th>
						<th class="col5" rowspan="3">3</th>
						<th class="col6" rowspan="3"></th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
					<tr>
						<th class="col9">????????????~~</th>
					</tr>
				</tbody>
				</table>

				<table id="list7">
					<tbody>
						<tr>
							<td class="col1">????????????</td>
						</tr>
						<tr>
							<td class="col2">???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</td>
					</tbody>
				</table>
				</div>
				</section>


				</main>
				<script>
		
	</script>
</body>
</html>











