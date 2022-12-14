<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- 부트스트랩 : css 설정  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous" />
<link rel="stylesheet" href="/resoures/static/list.css" />
<title>코딩북 프렌즈</title>
<!-- 아래 제이쿼리 소스코드 줄 이후부터 JS에 제이쿼리문 사용가능 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body class="black">
	<!-- // ANCHOR 모달창 -->
	<!-- 모달창은 항상 body 최상단에 적기-->

	<div class="box">
		<nav class="navbar navbar-expand-lg navbar-dark bg-info">
			<a href="list" class="navbar-brand" style="font-weight: bold">Coding
				Book Friends </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse " id="navbarTogglerDemo02" >
				<ul class="navbar-nav form-inline my-2 my-lg-0" style = "float:left">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 마이페이지 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div>
					</li>
				</ul>
			</div>
							<form class="form-inline my-2 my-lg-0" style ="float:right; margin-right:10px;">
			<input class="form-control mr-sm-2" type="search" placeholder="스터디명"
				aria-label="Search">
			<button class="btn btn-info my-2 my-sm-0" type="submit">검색</button>
		</form>
		</nav>

          <a href="create" class="btn btn-info" style="margin: 20px">스터디 만들기</a>		

		<div class = "container" style="margin-top: 80px">
      <h1>${ studygroup.title }</h1>
      <div>${ studygroup.regDate }</div>
      <div>신청인원: ${ studygroup.currentNum }/${ studygroup.totalNum }</div>
              <a href="edit?studyGroup_id=${ studygroup.studyGroup_id }">수정</a>
              <a href="delete?studyGroup_id=${ studygroup.studyGroup_id }">삭제</a>
      <hr><br>
      <div class="content">${ studygroup.contents }</div>
      <br><br>

	</div>
		</div>


	
	</div>
	</div>


	<!-- 부트스트랩 : JS 설정  -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>
