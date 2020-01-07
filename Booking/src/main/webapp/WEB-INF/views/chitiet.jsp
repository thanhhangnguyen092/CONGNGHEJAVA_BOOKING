<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<link type="text/css" rel="stylesheet" href="resources/css/trangchu.css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="<c:url value="resources/js/jquery-1.11.1.min.js"/>"></script>
<!-- Style CSS-->
<link href="<c:url value="/resources/css/style.css"/>"
	rel="stylesheet">
    <title>Chi tiet Phim</title>
</head>
 <nav>
    <div class="menu">
        <a class="active" href="home">HOMEPAGE</a>
        <a href="News">News</a>
        <header id="header-id">
        	<div class="search-zone">
        	<c:if test="${Email != null}">
        		<a href="#">${Email}</a>
        	</c:if>
        	<c:if test="${Email == null}">
        		<a href="LogIn">Log In</a>
        		<a href="SignUp">Sign Up</a>
        	</c:if>
        		
    		</div>
       	</header>
    </div>
</nav>
      <div class="slideshow-container">
              <div class="mySlides fade">
          <img src="resources/image/slide-1.jpg" style="width:100%">
                 </div>

        <div class="mySlides fade">
          <img src="resources/image/slide-2.jpg" style="width:100%">
                </div>

        <div class="mySlides fade">
          <img src="resources/image/slide-3.jpg" style="width:100%">
              </div>
      <br>

      <div style="text-align:center">
        <span class="dot" onclick="currentSlide(0)"></span> 
        <span class="dot" onclick="currentSlide(1)"></span> 
        <span class="dot" onclick="currentSlide(2)"></span> 
      </div>  
     <script>
      //khai bÃ¡o biáº¿n slideIndex Äáº¡i diá»n cho slide hiá»n táº¡i
      var slideIndex;
      // KHai bÃ o hÃ m hiá»n thá» slide
      function showSlides() {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          for (i = 0; i < slides.length; i++) {
             slides[i].style.display = "none";  
          }
          for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
          }

          slides[slideIndex].style.display = "block";  
          dots[slideIndex].className += " active";
          //chuyá»n Äáº¿n slide tiáº¿p theo
          slideIndex++;
          //náº¿u Äang á» slide cuá»i cÃ¹ng thÃ¬ chuyá»n vá» slide Äáº§u
          if (slideIndex > slides.length - 1) {
            slideIndex = 0
          }    
          //tá»± Äá»ng chuyá»n Äá»i slide sau 5s
          setTimeout(showSlides, 5000);
      }
      //máº·c Äá»nh hiá»n thá» slide Äáº§u tiÃªn 
      showSlides(slideIndex = 0);


      function currentSlide(n) {
        showSlides(slideIndex = n);
      }
    </script>
    <div class="container-fluid">
		<div class="col-lg-12 col-lg-offset-2 text-center">
			<h1 class="section-heading">Chi tiết Phim</h1>
			<p></p>
			<hr class="divider my-4">
			<hr class="primary">
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<a href="${pageContext.request.contextPath}/resources/image/${phim.hinhanh}">
					<img style="width: 400px; height: 400px;" src="<c:url value="/resources/image/${phim.hinhanh}" />"/>
				</a>
			</div>
			<div class="col-md-5">
				<h3>Tên Phim: ${phim.tenPhim}</h3>
				<p>Đạo diễn: ${phim.daodien}</p>
				<p>Ngày khởi chiếu: ${phim.ngaykhoichieu}</p>
				<p>Thời lượng: ${phim.thoiluong}</p>
				<p>Nội dung: ${phim.noidung}</p>
				<br>
				<br>
				<a class="btn btn-danger" href="${pageContext.request.contextPath}/datve?ma=${phim.maPhim}">Đặt vé</a>
			</div>
		</div>
	</div>
	
    <footer id="footer-id" style="margin-top: 20px;">
        <div class="contact">
                </div>
        <p>Project by &copy;<a href="">HyHy</a></p>
    </footer>
</body>
</html>
</body>
</html>
