package entities;
// Generated Jan 6, 2020 1:50:29 PM by Hibernate Tools 5.0.6.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Loaive generated by hbm2java
 */
@Entity
@Table(name = "loaive", catalog = "datvexemphim")
public class Loaive implements java.io.Serializable {

	private String maloaive;
	private String tenloaive;
	private Float gialoaive;
	private Set<Ve> ves = new HashSet<Ve>(0);

	public Loaive() {
	}

	public Loaive(String maloaive, String tenloaive) {
		this.maloaive = maloaive;
		this.tenloaive = tenloaive;
	}

	public Loaive(String maloaive, String tenloaive, Float gialoaive, Set<Ve> ves) {
		this.maloaive = maloaive;
		this.tenloaive = tenloaive;
		this.gialoaive = gialoaive;
		this.ves = ves;
	}

	@Id

	@Column(name = "Maloaive", unique = true, nullable = false, length = 20)
	public String getMaloaive() {
		return this.maloaive;
	}

	public void setMaloaive(String maloaive) {
		this.maloaive = maloaive;
	}

	@Column(name = "Tenloaive", nullable = false, length = 20)
	public String getTenloaive() {
		return this.tenloaive;
	}

	public void setTenloaive(String tenloaive) {
		this.tenloaive = tenloaive;
	}

	@Column(name = "Gialoaive", precision = 12, scale = 0)
	public Float getGialoaive() {
		return this.gialoaive;
	}

	public void setGialoaive(Float gialoaive) {
		this.gialoaive = gialoaive;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "loaive")
	public Set<Ve> getVes() {
		return this.ves;
	}

	public void setVes(Set<Ve> ves) {
		this.ves = ves;
	}

}
