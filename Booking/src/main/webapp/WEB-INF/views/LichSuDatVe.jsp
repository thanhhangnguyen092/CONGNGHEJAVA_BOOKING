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
    <title>Lich Su Dat Ve</title>
</head>
 <nav>
    <div class="menu">
        <a class="active" href="home">HOMEPAGE</a>
        <a href="News">News</a>
        <header id="header-id">
        	<div class="search-zone">
        	<c:if test="${name != null}">
        		<a href="#">${name}</a>
        		<a href="LogOut">Log Out</a>
        	</c:if>
        	<c:if test="${name == null}">
        		<a href="LogIn">Log In</a>
        		<a href="SignUp">Sign Up</a>
        	</c:if>
        		<a href="Lichsudatve">Lịch sử đặt vé</a>
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
   <section id="services">
	<div class="container-fluid" >
		<div class="text-center" >
	 <form>
	 	<table border="1">
	 		<tr>
	 			<td>
	 				Tên khách hàng
	 			</td>
	 			<td>
	 				Mã Hóa đơn
	 			</td>
	 			<td>
	 				Tên Phim
	 			</td>
	 			<td>
	 				Phòng
	 			</td>
	 			<td>
	 				Số lượng vé
	 			</td>
	 			<td>
	 				Suất chiếu
	 			</td>
	 			<td>
	 				Thời gian đặt
	 			</td>
	 			<td>
	 				Vị trí ngồi
	 			</td>
	 			<td>
	 				Hủy vé
	 			</td>
	 		</tr>
	 		<tr>
	 		
	 			<c:forEach items="${hoaDonKH}" var="itemhoadon">
							<c:if test="${not empty itemhoadon}">
								<tr>
									<td>${itemhoadon.tenKH}</td>
									<td>${itemhoadon.maHD}</td>
									<td>${itemhoadon.tenPhim}</td>
									<td>${itemhoadon.maPhong}</td>
									<td>${itemhoadon.soLuongve}</td>
									<td>${itemhoadon.suatChieu}</td>
									<td>${itemhoadon.thoiGiandat}</td>
									<td>${itemhoadon.viTri}</td>
									<td>
									<a href=""${pageContext.request.contextPath}/admin/see-list-categories.html?id=${itemCategory.categoryId}
										class="btn btn-danger">Hủy vé</a>
										</td>
								</tr>
							</c:if>
						</c:forEach>
	 		</tr>
	 	</table>
	 </form>
	 	</div>		
	</div> 

	

</section>
    <footer id="footer-id" style="margin-top: 20px;">
        <div class="contact">
                </div>
        <p>Project by &copy;<a href="">HyHy</a></p>
    </footer>
</body>
</html>
</body>
</html>
