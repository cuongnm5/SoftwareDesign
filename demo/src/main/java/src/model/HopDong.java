/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author local
 */
public class HopDong {
    private int id;
    private Date ngayTao;
    private String noiDung;
    private String moTa;
    private String thongTinThanhToan;
    private String trangThai;

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getTrangThai() {
        return trangThai;
    }
    private ArrayList<XeThueLai> listXeThueLai;
    private DoiTac doiTac;
    private ThanhVien leTan;

    public HopDong(Date ngayTao, String thongTinThanhToan, ArrayList<XeThueLai> listXeThueLai, DoiTac doiTac, ThanhVien leTan) {
        this.ngayTao = ngayTao;
        this.thongTinThanhToan = thongTinThanhToan;
        this.listXeThueLai = listXeThueLai;
        this.doiTac = doiTac;
        this.leTan = leTan;
    }

    public HopDong(int id, Date ngayTao, String noiDung, String moTa, String thongTinThanhToan, ArrayList<XeThueLai> listXeThueLai, DoiTac doiTac, ThanhVien leTan) {
        this.id = id;
        this.ngayTao = ngayTao;
        this.noiDung = noiDung;
        this.moTa = moTa;
        this.thongTinThanhToan = thongTinThanhToan;
        this.listXeThueLai = listXeThueLai;
        this.doiTac = doiTac;
        this.leTan = leTan;
    }

    public HopDong() {
        
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public void setThongTinThanhToan(String thongTinThanhToan) {
        this.thongTinThanhToan = thongTinThanhToan;
    }

    public void setListXeThueLai(ArrayList<XeThueLai> listXeThueLai) {
        this.listXeThueLai = listXeThueLai;
    }

    public void setDoiTac(DoiTac doiTac) {
        this.doiTac = doiTac;
    }

    public void setLeTan(ThanhVien leTan) {
        this.leTan = leTan;
    }

    public int getId() {
        return id;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public String getMoTa() {
        return moTa;
    }

    public String getThongTinThanhToan() {
        return thongTinThanhToan;
    }

    public ArrayList<XeThueLai> getListXeThueLai() {
        return listXeThueLai;
    }

    public DoiTac getDoiTac() {
        return doiTac;
    }

    public ThanhVien getLeTan() {
        return leTan;
    }
    
}
