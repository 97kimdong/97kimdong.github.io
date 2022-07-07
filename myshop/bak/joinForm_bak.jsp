<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<c:set var="path" value="${pageContext.request.contextPath }" />
  

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- css 연결 -->
	<link rel="stylesheet" href="${path }/resources/css/style.css">
    <link rel="stylesheet" href="${path }/resources/css/common.css">
	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-latest.js"></script>
<title>Bn2U</title>
<style>
	/* 초기화 */
	* { margin: 0; padding: 0;}
	ul { list-style: none; } 
	a { text-decoration: none; color: #222; }
	html, body { height: 100%;}
	#container{clear: both; width: 100%;}
	.container_wrap{clear: both; width: 100%;}
	.main_wrap{clear: both; margin-top: 4%;}
	/* /초기화 */
	/* 페이지 제목 */
	.main_title{
	    text-align: center;
	}
	.main_title h2{
	    margin-bottom: 2%;
	}
	.main_title p{
	    font-size: 1.1em;
	}
	.main_title p:nth-child(3){
	    font-size: 14px;
	    margin-top: 3%;
	    margin-bottom: 0;
	    margin-left: 24%;
	}
	.main_title p:nth-child(3)::before{
	    content: "*";
	    color: red;
	    margin-right: 4px;
	}
	/* /페이지 제목 */
	/* 회원가입 폼 */
	.joinForm {
	    width: 750px;
	    margin-top: 1vh;
	    margin-right: auto;
	    margin-bottom: 0%;
	    margin-left: auto;
	    text-align: center;
	}
	.table {
	    display:table;
	    border-collapse: collapse;
	    width: 100%;
	    text-align: left;
	    font-size: 1em;
	}
	.table tr{
	    display: table-row;
	}
	.table tr th, .table tr td{
	    display: table-cell;
	    border-bottom: 1px solid #dcdcdc;
	    padding: 12px 0 12px 25px;
	}
	.table tr th{
	    background-color: #fbfbfb;
	}
	.table tr th:before{
	    content: "*";
	    color: red;
	    margin-right: 4px;
	}
	.table tr td input:focus{
	    outline: none;
	}
	.table tr:first-child{
	    border-top: 1px solid #999999;
	}
	.table tr:nth-child(6) td{
	    border-bottom: none;
	    padding-bottom: 0;
	}
	.table tr:nth-child(7) td{
	    border-bottom: none;
	    padding-bottom: 0;
	}
	.table tr:nth-child(1) td input{
	    height: 32px;
	    width: 80%;
	    border: 1px solid #c1c1c1;
	}        
	.table tr:nth-child(2) td input{
	    height: 32px;
	    width: 50%;
	    border: 1px solid #c1c1c1;
	}
	.table tr:nth-child(3) td input{
	    height: 32px;
	    width: 50%;
	    border: 1px solid #c1c1c1;
	}
	.table tr:nth-child(4) td input{
	    height: 32px;
	    width: 80%;
	    border: 1px solid #c1c1c1;
	}
	.table tr:nth-child(5) td input{
	    height: 32px;
	    width: 80%;
	    border: 1px solid #c1c1c1;
	}
	.table tr:nth-child(6) td input[type=text]{
	    height: 32px;
	    width: 50%;
	    border: 1px solid #c1c1c1;
	}
	.table tr:nth-child(7) td input{
	    height: 32px;
	    width: 80%;
	    border: 1px solid #c1c1c1;
	}
	.table tr:nth-child(8) td input{
	    height: 32px;
	    width: 80%;
	    border: 1px solid #c1c1c1;
	}
	.table tr td input[type=button]{
	    width: 24%;
	    padding: 5px 0 9px 0;
	}
	.btn {
	    margin-top: 4%;
	    width: 20%;
	    padding: 5px 0 9px 0;
	}
	/* /회원가입 폼 */
</style>
</head>
<body>
	<div class="wrap">
        <header id="hd">
            <div class="hd_wrap">
            </div>
        </header>
        <div id="container">
            <div class="container_wrap">
	            <section class="form_wrap">
                	<form:form modelAttribute="CustomerDTO" action="joinForm" method="post">
                		<input type="hidden" path="id_ck"/>
                		<table>
                			<tbody>
                				<tr>
                					<th><form:label path="email">이메일</form:label></th>
                					<td><form:input path="email"/></td>
                				</tr>
                				<tr>
                					<th><form:label path="pw">비밀번호</form:label></th>
                					<td><form:input path="pw"/></td>
                				</tr>
                				<tr>
                					<th><form:label path="name">이름</form:label></th>
                					<td><form:input path="name"/></td>
                				</tr>
                				<tr>
                					<th><form:label path="phonenum">휴대폰번호</form:label></th>
                					<td><form:input path="phonenum"/></td>
                				</tr>
                				<tr>
                					<th><form:label path="addr1">주소</form:label></th>
                					<td><form:input path="addr1"/></td>
                				</tr>
                				<tr>
                					<th><form:label path="addr2">상세주소</form:label></th>
                					<td><form:input path="addr2"/></td>
                				</tr>
                				<tr>
                					<th><form:label path="zipcode">우편번호</form:label></th>
                					<td><form:input path="zipcode"/></td>
                				</tr>
                			</tbody>
                		</table>
                		 <input type="submit" value="전송"/>
                	</form:form>
                </section>
            </div>
        </div>
        <footer id="ft">
            <div class="ft_wrap">
            </div>
        </footer>
    </div>
</body>
</html>