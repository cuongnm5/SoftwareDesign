/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.model;

import java.sql.Date;

/**
 *
 * @author local
 */
public class DoiTac {
    private int id;
    private String SDT;
    private String email;
    private HoTen hoTen;
    private DiaChi diaChi;
    private Date ngaySinh;

    public void setId(int id) {
        this.id = id;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setHoTen(HoTen hoTen) {
        this.hoTen = hoTen;
    }

    public void setDiaChi(DiaChi diaChi) {
        this.diaChi = diaChi;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public int getId() {
        return id;
    }

    public String getSDT() {
        return SDT;
    }

    public String getEmail() {
        return email;
    }

    public HoTen getHoTen() {
        return hoTen;
    }

    public DiaChi getDiaChi() {
        return diaChi;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public DoiTac(String SDT, String email, HoTen hoTen, DiaChi diaChi, Date ngaySinh) {
        this.SDT = SDT;
        this.email = email;
        this.hoTen = hoTen;
        this.diaChi = diaChi;
        this.ngaySinh = ngaySinh;
    }

    public DoiTac(int id, String SDT, String email, HoTen hoTen, DiaChi diaChi, Date ngaySinh) {
        this.id = id;
        this.SDT = SDT;
        this.email = email;
        this.hoTen = hoTen;
        this.diaChi = diaChi;
        this.ngaySinh = ngaySinh;
    }

    public DoiTac(String SDT, String email, HoTen hoTen, Date ngaySinh) {
        this.SDT = SDT;
        this.email = email;
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
    }

    @Override
    public String toString() {
        return "DoiTac{" + "id=" + id + ", SDT=" + SDT + ", email=" + email + ", ngaySinh=" + ngaySinh + '}';
    }

    public DoiTac() {
    }
}
