<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Coding Book Friends</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<nav class="navbar bg-info fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="list" style="color:white; font-weight:bold; margin-left: 10px; font-size:30px">Coding Book Friends</a>
    <button class="navbar-toggler" type="button" style="float:right;" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end bg-info" style="color:white;" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">회원정보</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </div>
</nav>



		<div class = "banner" style="padding:180px; color:white; background:black; text-align:center;">
		<p style = "font-size: 100px">Coding Book Friends</p>
		<a href="create" class="btn btn-info" style="margin: 20px">스터디 만들기</a>		
		</div>
		
		<div class = "container">


		<c:forEach var="studygroup" items="${ studygroups }">
			<div class="col-sm-6" style="clear:both; margin: 20px;">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title" style = "color:black">
							<a href="detail?studyGroup_id=${ studygroup.studyGroup_id }" style="color:#0B4C5F ">${ studygroup.title }</a>
						</h5>
						<p class="card-text">
							BY. ${ studygroup.leader }<br> 정원. ${ studygroup.currentNum }/${ studygroup.totalNum }
						</p>

						<p class="card-text">${ studygroup.contents }</p>
					</div>
				</div>
			</div>
		</c:forEach>
	
	</div>


<script>
(function mainScript() {
	  "use strict";
	  const offcanvasToggle = document.querySelector(
	    '[data-bs-toggle="offcanvas"]',
	  );
	  const offcanvasCollapse = document.querySelector(".offcanvas-collapse");
	  offcanvasToggle.addEventListener("click", function () {
	    offcanvasCollapse.classList.toggle("open");
	  });
	})();
</script>

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
