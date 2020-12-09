/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.model;

/**
 *
 * @author local
 */
public class Xe {
    private int id;
    private String tenHang;
    private String loai;
    private String namSX;

    public Xe(String tenHang, String loai, String namSX, String soDangKy, String bienSoXe) {
        this.tenHang = tenHang;
        this.loai = loai;
        this.namSX = namSX;
        this.soDangKy = soDangKy;
        this.bienSoXe = bienSoXe;
    }
    private String soDangKy;
    private String bienSoXe;

    public Xe(int id, String tenHang, String loai, String namSX, String soDangKy, String bienSoXe) {
        this.id = id;
        this.tenHang = tenHang;
        this.loai = loai;
        this.namSX = namSX;
        this.soDangKy = soDangKy;
        this.bienSoXe = bienSoXe;
    }

    public Xe() {
        
    }

    public int getId() {
        return id;
    }

    public String getTenHang() {
        return tenHang;
    }

    public String getLoai() {
        return loai;
    }

    public String getNamSX() {
        return namSX;
    }

    public String getSoDangKy() {
        return soDangKy;
    }

    public String getBienSoXe() {
        return bienSoXe;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTenHang(String tenHang) {
        this.tenHang = tenHang;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public void setNamSX(String namSX) {
        this.namSX = namSX;
    }

    public void setSoDangKy(String soDangKy) {
        this.soDangKy = soDangKy;
    }

    public void setBienSoXe(String bienSoXe) {
        this.bienSoXe = bienSoXe;
    }

    @Override
    public String toString() {
        return "Xe{" + "id=" + id + ", tenHang=" + tenHang + ", loai=" + loai + ", namSX=" + namSX + ", soDangKy=" + soDangKy + ", bienSoXe=" + bienSoXe + '}';
    }
    
    
    
}
