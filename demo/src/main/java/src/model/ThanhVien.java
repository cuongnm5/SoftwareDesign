/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.model;
import java.sql.Date;
import src.model.HoTen;
import src.model.DiaChi;
/**
 *
 * @author local
 */
public class ThanhVien {
    private String username;
    private String password;
    private int id;
    private HoTen hoTen;
    private DiaChi diaChi;
    private String email;
    private String SDT;
    private String vaitro;
    private Date ngaySinh;

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public ThanhVien(String username, String password, int id, HoTen hoTen, DiaChi diaChi, String email, String SDT, String vaitro, Date ngaySinh) {
        this.username = username;
        this.password = password;
        this.id = id;
        this.hoTen = hoTen;
        this.diaChi = diaChi;
        this.email = email;
        this.SDT = SDT;
        this.vaitro = vaitro;
        this.ngaySinh = ngaySinh;
    }
    
    public ThanhVien() {
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public int getId() {
        return id;
    }

    public HoTen getHoTen() {
        return hoTen;
    }

    public DiaChi getDiaChi() {
        return diaChi;
    }

    public String getEmail() {
        return email;
    }

    public String getSDT() {
        return SDT;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setHoTen(HoTen hoTen) {
        this.hoTen = hoTen;
    }

    public void setDiaChi(DiaChi diaChi) {
        this.diaChi = diaChi;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getVaitro() {
        return vaitro;
    }

    public void setVaitro(String vaitro) {
        this.vaitro = vaitro;
    }
    
}
