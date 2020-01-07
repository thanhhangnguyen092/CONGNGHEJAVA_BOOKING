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
    <title>News</title>
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
   	<div>
   	VỀ CHÚNG TÔI<br>
GIỚI THIỆU:<br>
Tên đầy đủ: Trung tâm giải trí StarLight trực thuộc Công ty Cổ phần Truyền hình Cáp NTH<br>

LỊCH SỬ HÌNH THÀNH VÀ PHÁT TRIỂN<br>

Ngày 20/04/2004, Công ty cổ phần Truyền hình cáp Đà Lạt – N.T.H được thành lập, hoạt động theo Giấy phép kinh doanh số 5800 423 275 của Sở KHĐT tỉnh Lâm Đồng.
<br>
Tháng 06/2011, để đảm bảo tính hệ thống cho việc tổ chức kinh doanh và quản lý, Hội đồng quản trị Công ty cổ phần Truyền hình cáp Đà Lạt – N.T.H và Công ty cổ phần Truyền hình cáp Đắk Lắk – N.T.H đã thống nhất chủ trương sát nhập hai công ty thành Công ty cổ phần Truyền hình cáp NTH, hoạt động theo Giấy chứng nhận đăng ký kinh doanh số 6000 499 598 của Sở KHĐT Đắk Lắk cấp.
<br>
Năm 2013, nhận thấy vai trò quan trọng của dịch vụ vận chuyển hàng không đồng thời trên cơ sở khảo sát nhu cầu của người dân tại địa bàn các tỉnh Tây Nguyên, Công ty NTH đã thành lập và đưa vào hoạt động Hệ thống phòng vé máy bay Blue And Sky, văn phòng chính đặt tại Buôn Ma Thuột và Đà Lạt, cùng với hệ thống đại lý trải dài 03 tỉnh Đắk Lắk, Đắk Nông và Lâm Đồng.
<br>
Bước sang năm 2014, xuất phát từ nhu cầu vui chơi giải trí, hưởng thụ văn hóa ngày càng cao của người dân tại Buôn Ma Thuột nói riêng và tỉnh Đắk Lắk nói chung, nhằm góp phần cùng Nhà nước, UBND tỉnh, Thành phố và các cấp chính quyền thúc đẩy sự phát triển kinh tế xã hội, đầu tư ngành nghề phù hợp với xu thế phát triển hiện đại. Công ty cổ phần Tryền hình cáp quyết định đầu tư xây dựng hệ thống Trung tâm vui chơi giải trí chất lượng cao với tên gọi “Trung Tâm giải trí công nghệ cao Star light”.
<br>
 <br>
DỊCH VỤ:<br>
Là khu giải trí phức hợp chất lượng cao bao gồm: Cụm rạp chiếu phim 3D – 2D hiện đại, Bowling đẳng cấp, Khu game, Kidzone an toàn, café, thức ăn nhanh… Cụm rạp chiếu phim với trang thiết bị hiện đại, sử dụng công nghệ 3D tiên tiến nhất. Cụm rạp Starlight có thể phục vụ trung bình 200 lượt khách cho mỗi suất chiếu với công suất trên 20 suất chiếu mỗi ngày. Đem đến cho khán giả hàng loạt phim bom tấn được công chiếu đồng thời với các rạp ở thành phố lớn như Hà Nội, Hồ Chí Minh.
<br>
PHƯƠNG CHÂM HOẠT ĐỘNG:<br>
Với mong muốn đem đến những tiện ích vui chơi, giải trí hiện đại đến với khách hàng. Chúng tôi mong rằng mỗi phút giây tại Starlight luôn là những khoảng khắc thú vị và không thể quên của bạn bên cạnh gia đình, bạn bè và người thân. Và với sự năng động, nhiệt huyết của Ban Lãnh đạo cùng toàn thể cán bộ, nhân viên chúng tôi sẽ đang từng bước khẳng định thương hiệu Starlight , từ đó phát triển thành hệ thống vui chơi giải trí trên cả nước.
<br>
CHÍNH SÁCH BÁN SỈ:<br>
Với đội ngũ nhân viên năng động, dầy dặn kinh nghiệm và chính sách bán sỉ cực ưu đãi cho nhóm Khách hàng, Tổ chức, Cơ quan, công ty, trường học, câu lạc bộ…Sẽ là sự lựa chọn thích đáng cho các bạn.
<br>
LIÊN HỆ VỚI CHÚNG TÔI:<br>
<br>
1. TTGT Starlight Quy Nhơn<br>
Địa chỉ: Tầng 8 An Phú Thịnh, TP. Quy Nhơn, tỉnh Bình Định<br>
Số điện thoại: 0914399797<br>
   	</div>
    <footer id="footer-id">
        <div class="contact">
                </div>
        <p>Project by &copy;<a href="">HyHy</a></p>
    </footer>
</body>
</html>
</body>
</html>
