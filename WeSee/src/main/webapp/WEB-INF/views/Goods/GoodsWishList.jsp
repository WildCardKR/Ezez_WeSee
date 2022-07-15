<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@	taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="GoodsMainTop.jsp"%>

<html lang="ko-kr">
   <head>
   	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css"> 

	<link rel="stylesheet" href="resources/common.css">
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
</head>

<style>
	th, td {
	text-align: center;
    }
    
    hr{
    border: 0;
    height: 2px;
    width: 100%;
    background-color: #FB6A6D;    
    }
</style>


	<div class="container-fluid">
		<div class="col-md-offset-1 col-md-9">	    
			<font size="3"><b>내가 찜한 상품</b></font><br><br>
			<hr align="left">
		</div>
	</div>

	<div class="row">
		<div class="col-md-offset-2 col-md-18">
		<table style="width:100%;">
			<thead>
				<tr style="height:80px">
					<th width="5%"><p style="text-align:center;">이미지</p></th>
					<th width="25%"><p style="text-align:center;">상품명</p></th>
					<th width="30%"><p style="text-align:center;">삭제</p></th>				
			</thead>
			
			<tbody>
				<c:if test="${empty goodswishList}">
					<tr style="height:80px">
						<th colspan="3">
							<p style="text-align:center;">찜한 상품이 없습니다.</p>
						</th>
					</tr>
				</c:if>
				
				<c:if test="${not empty goodswishList}">					
					<c:forEach items="${goodswishList}" var="gdto">									
						<tr style="height:200px">
							<td>
								<a href="go.goodsView.goods?gnum=${gdto.gnum}&gspec=${gdto.gspec}&gmovie=${gdto.gmovie}">
									<img src="filePath1/${gdto.gimage}" style="width:130px;height:130px;">
								</a>
							</td>
							
							<td><p style="text-align:center;">${gdto.gname}</p></td>							
							
								<td width="10%">
									<div align="center">
										<input type="button" value="x" onclick="location.href='doGoodsWishListDelete.goods?gnum=${gdto.gnum}'">										
									</div>
								</td>				
						</tr><br>						
											
					</c:forEach>
				</c:if>
			</tbody>
		</table>
		<br>
		<br>
		
	</div>
</div>