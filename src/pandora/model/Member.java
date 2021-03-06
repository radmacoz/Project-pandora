package pandora.model;
import java.sql.Date;
public class Member {

	private String mem_id;
	private String mem_passwd;
	private String mem_name;
	private String mem_email;
	private String mem_tel;
	private String mem_addr;
	private String mem_birth;
	private Date mem_reg_date;
	private Date mem_update_date;
	private int mem_point;
	private String mem_del;
	private String mem_vip;
	private String mem_vip_app;
	
	public String getMem_vip_app() {
		return mem_vip_app;
	}
	public void setMem_vip_app(String mem_vip_app) {
		this.mem_vip_app = mem_vip_app;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_passwd() {
		return mem_passwd;
	}
	public void setMem_passwd(String mem_passwd) {
		this.mem_passwd = mem_passwd;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_tel() {
		return mem_tel;
	}
	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}
	public String getMem_addr() {
		return mem_addr;
	}
	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}
	public String getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}
	public Date getMem_reg_date() {
		return mem_reg_date;
	}
	public void setMem_reg_date(Date mem_reg_date) {
		this.mem_reg_date = mem_reg_date;
	}
	public Date getMem_update_date() {
		return mem_update_date;
	}
	public void setMem_update_date(Date mem_update_date) {
		this.mem_update_date = mem_update_date;
	}
	public int getMem_point() {
		return mem_point;
	}
	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}
	public String getMem_vip() {
		return mem_vip;
	}
	public void setMem_vip(String mem_vip) {
		this.mem_vip = mem_vip;
	}
	public String getMem_del() {
		return mem_del;
	}
	public void setMem_del(String mem_del) {
		this.mem_del = mem_del;
	}
	
}