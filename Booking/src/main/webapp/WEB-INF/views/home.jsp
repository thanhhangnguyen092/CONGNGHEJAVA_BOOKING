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
    <title>Trangchu</title>
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
   
 <form>
    <select class="custom-select custom-select-sm mb-3">
    	<option selected>--Chọn film--</option>
      <c:if test="${listPhim != null}">
      <c:forEach items="${listPhim}" var="itemPhim">
				<option value="${itemPhim.maPhim}">${itemPhim.tenPhim}</option>
	  </c:forEach>
      </c:if>
    </select>
    <select name="cars" class="custom-select mb-3">
    <option selected>--Chọn ngày--</option>
      <option value = "${date}" >${date.toString()}</option>
    </select>
    <select name="cars" class="custom-select custom-select-lg mb-3">
      <option selected>--Thời gian--</option>
      <%-- <c:if test="${listChieu != null}">
      <c:forEach items="${listChieu}" var="itemChieu">
				<option value="${itemChieu.malichchieu}">${itemChieu.suatchieu}</option>
	  </c:forEach>
	  </c:if> --%>
    </select>
    
	<button type="submit" class="btn btn-primary">BOOKING</button>
  </form>


<%-- 	<c:if test="${listPhim != null}" >
		<c:forEach items="${listPhim}" var="itemPhim">
			<tr>
										<td><img alt="" src="<c:url value="/resources/image/${itemPhim.hinhanh}" />"/></td>
									
									</tr>
		</c:forEach>
	</c:if> --%>
	<div style="  display:flex;flex-wrap:wrap;justify-content: center;">
			<c:if test="${listPhim != null}">
				<c:forEach items="${listPhim}" var="itemPhim">
					<div style="width: 400px; height: 550px;float: left;margin:10px;" class="product">
					 <a href="">
						<img style="width: 380px; height: 430px;" src="<c:url value="/resources/image/${itemPhim.hinhanh}"/>"/>
					</a>
						<div> <a class="btn btn-danger" href="${pageContext.request.contextPath}/Showtimes?ma=${itemPhim.maPhim}">Xem lịch chiếu</a> 
						<a class="btn btn-info" href="${pageContext.request.contextPath}/view-detail.html?maPhim=${itemPhim.maPhim}">Chi tiết</a> </div>
						
					</div>
					
				</c:forEach>
			</c:if>
			</div>
			<div style="clear: left;"> </div>
    <footer id="footer-id" style="margin-top: 20px;">
        <div class="contact">
                </div>
        <p>Project by &copy;<a href="">HyHy</a></p>
    </footer>
</body>
</html>
</body>
</html>
