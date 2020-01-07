package controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import dao.*;
import entities.*;
import model.*;

@EnableWebMvc
@Controller
public class MainController {
	
	@Autowired 
	private connectDAO connectDao;
	
	@RequestMapping(value ={"/", "/home"}, method = RequestMethod.GET)
	public String home(Model model) {
		String pattern = "MM-dd-yyyy";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		String date = simpleDateFormat.format(new Date());
		List<Phim> listPhim = new ArrayList<Phim>();
		List<Lichchieu> listChieu = new ArrayList<Lichchieu>();
		listPhim = connectDao.listPhim();
		listChieu = connectDao.listLichchieu();
		model.addAttribute("listPhim", listPhim);
		model.addAttribute("date", date);
		model.addAttribute("listChieu", listChieu);
		return "home";
	}
	
	@RequestMapping(value = "/Lichsudatve", method = RequestMethod.GET)
	public String Lichsudatve(Model model, HttpSession session) {

		if(session.getAttribute("email") != null) 
		{
			Khachhang kh = connectDao.layKhachhang(session.getAttribute("email").toString());
			List<Hoadon> hd = connectDao.layHoaDonTheoKhachHang(kh);
			
			System.out.print(hd.size());
			/*
			 * List<hoaDon> hoadon = new ArrayList<hoaDon>(); for(Hoadon hdon : hd) { hoaDon
			 * HD = new hoaDon(); HD.setSoLuongve(hdon.getSoluongve());
			 * HD.setMaHD(hdon.getMaHd()); HD.setMaPhong(hdon.getPhong().getMaPhong());
			 * HD.setSuatChieu(hdon.getSuatchieu().getGiobatdau() + "-"
			 * +hdon.getSuatchieu().getGioketthuc());
			 * HD.setTenKH(hdon.getKhachhang().getHotenKh());
			 * HD.setTenPhim(hdon.getPhim().getTenPhim());
			 * HD.setThoiGiandat(hdon.getThoigiandat()); HD.setViTri(hdon.getVitringoi());
			 * hoadon.add(HD); } System.out.print(hoadon.size());
			 * model.addAttribute("hoaDonKH", hoadon);
			 */
			return "LichSuDatVe";
		}
		return "redirect:/home";	
		
	}
	
	@RequestMapping(value = "/Showtimes", method = RequestMethod.GET)
	public String xemlichchieu(Model model,
			@RequestParam(value = "maPhim", defaultValue = "0") String maPhim) {
		if (maPhim == null) {
			return "redirect:/home";
		}
		List<Lichchieu> lichchieu = connectDao.layLichchieutheoPhim(maPhim);
		Phim phim = connectDao.getPhimByMa(maPhim);
		//Suatchieu suatchieu = connectDao.laySuatchieuMa(lichchieu.getSuatchieu().getMaSuat());
		model.addAttribute("phim", phim);
		model.addAttribute("lichchieu", lichchieu);
		//model.addAttribute("suatchieu", suatchieu);
			return "Showtimes";
		
	}
	
	@RequestMapping(value = "/view-detail", method = RequestMethod.GET)
	public String viewPhim(Model model, @RequestParam(value = "maPhim", defaultValue = "0") String maPhim) {
		if (maPhim == null) {
			return "redirect:/home";
		}
		Phim phim = connectDao.getPhimByMa(maPhim);
		model.addAttribute("phim", phim);
		return "chitiet";
	}
	
	
	@RequestMapping(value = "/News", method = RequestMethod.GET)
	public String news(Model model) {
		
			return "news";
		
	}
	
	@RequestMapping(value = "/LogIn", method = RequestMethod.GET)
	public String Login(Model model,HttpSession session) {
			return "LogIn";
	}
	
	@RequestMapping(value = "/SignUp", method = RequestMethod.GET)
	public String Signup(Model model,HttpSession session) {
		Random random = new Random();
		int maKH = random.nextInt(100000000);
		model.addAttribute("maKH", maKH);
		return "SignUp";
	}
	
	@RequestMapping(value = "/SignUp", method = RequestMethod.POST)
	public String SignUpPost(HttpSession session,Model model, 
			@RequestParam(value = "hoten", defaultValue = "") String hoTen,
			@RequestParam(value = "diachi", defaultValue = "") String diaChi,
			@RequestParam(value = "sdt", defaultValue = "") String sdt,
			@RequestParam(value = "tentruycap", defaultValue = "") String tenTruycap,
			@RequestParam(value = "matkhau", defaultValue = "") String matKhau,
			@RequestParam(value = "nhaplaimatkhau", defaultValue = "") String nhaplaiMatkhau,
			@RequestParam(value = "maKH", defaultValue = "") String maKH) {
		if(!matKhau.equals(nhaplaiMatkhau))
		{
			model.addAttribute("error", "Lỗi. Mật khẩu không trùng khớp.");
			
		}
		else 
		{
			Boolean checkSignup  = connectDao.checkSignUp(tenTruycap, matKhau);
			if (checkSignup != true) {
				Khachhang kh = new Khachhang();
				kh.setHotenKh(hoTen);
				kh.setDiachiKh(diaChi);
				kh.setTentruycapKh(tenTruycap);
				kh.setMatkhauKh(matKhau);
				kh.setSdtKh(sdt);
				kh.setMaKh(maKH);
				System.out.print(""+hoTen + diaChi + sdt + matKhau+ nhaplaiMatkhau + maKH);
				connectDao.AddKhachhang(kh);			
				return "redirect:/";
			}
			else
			{
				model.addAttribute("error", "Lỗi. Tài khoản đã tồn tại");
			}
		}
			return "SignUp";
	}
	
	@RequestMapping(value = "/LogIn", method = RequestMethod.POST)
	public String LoginPost(HttpSession session,Model model, 
			@RequestParam(value = "Email", defaultValue = "") String Email,
			@RequestParam(value = "Password", defaultValue = "") String Password) {
		Boolean checklogin  = connectDao.checkLogIn(Email, Password);
		if (checklogin == true) {
			session.setAttribute("email", Email);
			
			return "redirect:/";
		}
		else 
		{
			model.addAttribute("error", "Không đúng tài khoản. Vui lòng đăng nhập lại.");
		}
		model.addAttribute("name", session.getAttribute("email"));
		return "LogIn";
	}
	
	@RequestMapping(value = "/datve", method = RequestMethod.GET)
	public String DatVe(Model model,HttpSession session,
			@RequestParam(value = "ma", defaultValue = "") String ma) {
			System.out.print(""+ ma);
			Phim p = connectDao.getPhimByMa(ma);
			Random random = new Random();
			int maDon = random.nextInt(100000000);
			List<Suatchieu> listsuatchieu = connectDao.laySuatchieu();
			model.addAttribute("listSuatChieu", listsuatchieu);
			model.addAttribute("tenkhachhang", session.getAttribute("email"));
			model.addAttribute("maDon", maDon);
			model.addAttribute("Phim", p);
			return "DatVe";
	}
	
	@RequestMapping(value = "/datve", method = RequestMethod.POST)
	public String SaveDatVe(Model model,HttpSession session ,
			@RequestParam(value = "maPhim", defaultValue = "") String maPhim,
			@RequestParam(value = "madon", defaultValue = "") String maDon,
			@RequestParam(value = "soluong", defaultValue = "") int soLuong,
			@RequestParam(value = "vitri", defaultValue = "") String viTri,
			@RequestParam(value = "SuatChieu", defaultValue = "") String MasuatChieu){
			System.out.print(""+maPhim + maDon + soLuong + viTri+ MasuatChieu);
			Hoadon hoaDon = new Hoadon();
			Khachhang kh = null;
			kh = connectDao.layKhachhang(session.getAttribute("email").toString());
			Suatchieu suatChieu = null;
			suatChieu = connectDao.laySuatchieuMa(MasuatChieu);
			hoaDon.setKhachhang(kh);
			hoaDon.setSoluongve(soLuong);
			hoaDon.setMaHd(maDon);
			hoaDon.setThoigiandat(new Date());
			hoaDon.setSuatchieu(suatChieu);
			hoaDon.setPhim(connectDao.getPhimByMa(maPhim));
			hoaDon.setPhong(suatChieu.getPhong());
			hoaDon.setVitringoi(viTri);
			connectDao.Save(hoaDon);
			return "DatVe";
	}
	
}
