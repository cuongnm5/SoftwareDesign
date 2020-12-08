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
public class HoTen {
    private int id;
    private String tenDem;
    private String ten;
    private String ho;

    public HoTen(int id, String tenDem, String ten, String ho) {
        this.tenDem = tenDem;
        this.ten = ten;
        this.ho = ho;
        this.id = id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public HoTen() {
    }

    public String getTenDem() {
        return tenDem;
    }

    public String getTen() {
        return ten;
    }

    public String getHo() {
        return ho;
    }

    public void setTenDem(String tenDem) {
        this.tenDem = tenDem;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public void setHo(String ho) {
        this.ho = ho;
    }
    
}
