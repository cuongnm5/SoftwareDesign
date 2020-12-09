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
public class DiaChi {
    private int id;
    private String soNha;
    private String toaNha;
    private String phuongXa;
    private String quanHuyen;
    private String tinhThanh;

    public DiaChi(int id, String soNha, String phuongXa, String quanHuyen, String tinhThanh) {
        this.id = id;
        this.soNha = soNha;
        this.phuongXa = phuongXa;
        this.quanHuyen = quanHuyen;
        this.tinhThanh = tinhThanh;
    }

    public DiaChi(int id, String soNha, String toaNha, String phuongXa, String quanHuyen, String tinhThanh) {
        this.id = id;
        this.soNha = soNha;
        this.toaNha = toaNha;
        this.phuongXa = phuongXa;
        this.quanHuyen = quanHuyen;
        this.tinhThanh = tinhThanh;
    }

    public DiaChi(String soNha, String phuongXa, String quanHuyen, String tinhThanh) {
        this.soNha = soNha;
        this.phuongXa = phuongXa;
        this.quanHuyen = quanHuyen;
        this.tinhThanh = tinhThanh;
    }

    @Override
    public String toString() {
        return "DiaChi{" + "id=" + id + ", soNha=" + soNha + ", toaNha=" + toaNha + ", phuongXa=" + phuongXa + ", quanHuyen=" + quanHuyen + ", tinhThanh=" + tinhThanh + '}';
    }

    public DiaChi() {
        
    }

    public int getId() {
        return id;
    }

    public String getSoNha() {
        return soNha;
    }

    public String getToaNha() {
        return toaNha;
    }

    public String getPhuongXa() {
        return phuongXa;
    }

    public String getQuanHuyen() {
        return quanHuyen;
    }

    public String getTinhThanh() {
        return tinhThanh;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setSoNha(String soNha) {
        this.soNha = soNha;
    }

    public void setToaNha(String toaNha) {
        this.toaNha = toaNha;
    }

    public void setPhuongXa(String phuongXa) {
        this.phuongXa = phuongXa;
    }

    public void setQuanHuyen(String quanHuyen) {
        this.quanHuyen = quanHuyen;
    }

    public void setTinhThanh(String tinhThanh) {
        this.tinhThanh = tinhThanh;
    }
    
    
}
