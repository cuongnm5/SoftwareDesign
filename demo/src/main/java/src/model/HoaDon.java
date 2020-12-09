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
public class HoaDon {
    private int id;
    private float giaTien;
    private String moTa;
    private Date thoiGianThanhToan;
    private HopDong hopDong;
    private ThanhVien thuNgan;
    private String billPath;
    private DoiTac doiTac;

    public HoaDon(float giaTien, Date thoiGianThanhToan, HopDong hopDong, ThanhVien thuNgan, String billPath, DoiTac doiTac) {
        this.giaTien = giaTien;
        this.thoiGianThanhToan = thoiGianThanhToan;
        this.hopDong = hopDong;
        this.thuNgan = thuNgan;
        this.billPath = billPath;
        this.doiTac = doiTac;
    }

    public HoaDon(int id, float giaTien, String moTa, Date thoiGianThanhToan, HopDong hopDong, ThanhVien thuNgan, String billPath, DoiTac doiTac) {
        this.id = id;
        this.giaTien = giaTien;
        this.moTa = moTa;
        this.thoiGianThanhToan = thoiGianThanhToan;
        this.hopDong = hopDong;
        this.thuNgan = thuNgan;
        this.billPath = billPath;
        this.doiTac = doiTac;
    }

    public int getId() {
        return id;
    }

    public float getGiaTien() {
        return giaTien;
    }

    public String getMoTa() {
        return moTa;
    }

    public Date getThoiGianThanhToan() {
        return thoiGianThanhToan;
    }

    public HopDong getHopDong() {
        return hopDong;
    }

    public ThanhVien getThuNgan() {
        return thuNgan;
    }

    public String getBillPath() {
        return billPath;
    }

    public DoiTac getDoiTac() {
        return doiTac;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setGiaTien(float giaTien) {
        this.giaTien = giaTien;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public void setThoiGianThanhToan(Date thoiGianThanhToan) {
        this.thoiGianThanhToan = thoiGianThanhToan;
    }

    public void setHopDong(HopDong hopDong) {
        this.hopDong = hopDong;
    }

    public void setThuNgan(ThanhVien thuNgan) {
        this.thuNgan = thuNgan;
    }

    public void setBillPath(String billPath) {
        this.billPath = billPath;
    }

    public void setDoiTac(DoiTac doiTac) {
        this.doiTac = doiTac;
    }

    public HoaDon() {
    }
    
    
}
