package dao;

import java.util.List;

import entities.*;

public interface connectDAO {
	public List<Khachhang> layKhachHang();
	public List<Phim> listPhim();
	public List<Lichchieu> listLichchieu();
	public Boolean checkLogIn(String Email, String Pas);
	public Khachhang layKhachhang(String Email);
    public Phim getPhimByMa(String maPhim);
    public List<Suatchieu> laySuatchieu();
    public Suatchieu laySuatchieuMa(String MaSuat);
    public void Save(Hoadon hoaDon);
    public Boolean checkSignUp(String ten, String Pas);
    public void AddKhachhang(Khachhang kh);
    public List<Hoadon> layHD();
    public Hoadon layHDKH(String maKH);
    public Phong layPhong(String MaSuat);
    public List<Phong> layPhong();
    public List<Lichchieu> layLichchieutheoPhim(String maPhim);
    public List<Hoadon> layHoaDonTheoKhachHang(Khachhang kh);
}
