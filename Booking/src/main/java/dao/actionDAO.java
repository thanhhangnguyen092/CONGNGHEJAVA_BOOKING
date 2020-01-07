package dao;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import entities.Hoadon;
import entities.Khachhang;
import entities.Lichchieu;
import entities.Phim;
import entities.Phong;
import entities.Suatchieu;
public class actionDAO implements connectDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public List<Phim> listPhim() {
		List<Phim> list = null;
		// TODO Auto-generated method stub
				Session session = sessionFactory.getCurrentSession();
				session.beginTransaction();
				Criteria cr = session.createCriteria(Phim.class);
				list = cr.list();
				session.getTransaction().commit();
		return list;
	}


	@Override
	public List<Khachhang> layKhachHang() {
		List<Khachhang> list = null;
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Khachhang.class);
		list = cr.list();
		session.getTransaction().commit();
		return list;
	}


	@Override
	public Boolean checkLogIn(String Email, String Pas) {
		List<Khachhang> list =  this.layKhachHang();
		for(Khachhang c :list) {
			if((c.getTentruycapKh().trim().equals(Email)) 
					&& (c.getMatkhauKh().trim().equals(Pas))){
				return true;
			}
		}
		return false;
	}


	@Override
	public List<Lichchieu> listLichchieu() {
		List<Lichchieu> list = null;
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Lichchieu.class);
		list = cr.list();
		session.getTransaction().commit();
		return list;
	}


	@Override
	public Phim getPhimByMa(String maPhim) {
		List<Phim> list = null;
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Phim.class, maPhim);
		list = cr.list();
		session.getTransaction().commit();
		return list.get(0);
	}


	@Override
	public List<Suatchieu> laySuatchieu() {
		List<Suatchieu> list = null;
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Suatchieu.class);
		list = cr.list();
		session.getTransaction().commit();
		return list;
	}


	@Override
	public Khachhang layKhachhang(String Email) {
		Khachhang kh = null;
		List<Khachhang> list =  this.layKhachHang();
		for(Khachhang c :list) {
			if((c.getTentruycapKh().trim().equals(Email))){
				kh= c;
			}
		}
		return kh;
	}


	@Override
	public Suatchieu laySuatchieuMa(String MaSuat) {
		List<Suatchieu> list = null;
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Suatchieu.class, MaSuat);
		list = cr.list();
		session.getTransaction().commit();
		return list.get(0);
	}


	@Override
	public void Save(Hoadon hoaDon) {
		// TODO Auto-generated method stub
				Session session = sessionFactory.getCurrentSession();
				session.beginTransaction();
				// Save category
				session.persist(hoaDon);
				session.getTransaction().commit();
	}


	@Override
	public Boolean checkSignUp(String ten, String Pas) {
		List<Khachhang> list =  this.layKhachHang();
		for(Khachhang c :list) {
			if((c.getTentruycapKh().trim().equals(ten)) 
					&& (c.getMatkhauKh().trim().equals(Pas))){
				return true;
			}
		}
		return false;
	}


	@Override
	public void AddKhachhang(Khachhang kh) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		// Save category
		session.persist(kh);
		session.getTransaction().commit();
	}


	@Override
	public Hoadon layHDKH(String maKH) {
		List<Hoadon> list = null;
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Hoadon.class, maKH);
		list = cr.list();
		session.getTransaction().commit();
		return list.get(0);
	}


	@Override
	public List<Hoadon> layHD() {
		List<Hoadon> list = null;
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Hoadon.class);
		list = cr.list();
		session.getTransaction().commit();
		return list;
		
	}


	@Override
	public Phong layPhong(String MaSuat) {
		Phong ph = null;
		/*
		 * List<Phong> list = this.layPhong(); for(Phong c :list) {
		 * if((c.trim().equals(MaSuat))){ ph = c; } }
		 */
		return ph;
	}


	@Override
	public List<Phong> layPhong() {
		List<Phong> list = null;
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Phong.class);
		list = cr.list();
		session.getTransaction().commit();
		return list;
	}


	@Override
	public List<Lichchieu> layLichchieutheoPhim(String maPhim) {
		List<Lichchieu> list = null;
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(Lichchieu.class, maPhim);
		list = cr.list();
		session.getTransaction().commit();
		return list;
	}


}
