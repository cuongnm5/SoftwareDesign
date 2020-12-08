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
public class XeThueLai {
    private int id;
    private Date ngayBatDau;
    private Date ngayKetThuc;
    private float giaThue;
    private Xe xe;

    public XeThueLai(int id, Date ngayBatDau, Date ngayKetThuc, float giaThue, Xe xe) {
        this.id = id;
        this.ngayBatDau = ngayBatDau;
        this.ngayKetThuc = ngayKetThuc;
        this.giaThue = giaThue;
        this.xe = xe;
    }

    public int getId() {
        return id;
    }

    public Date getNgayBatDau() {
        return ngayBatDau;
    }

    public Date getNgayKetThuc() {
        return ngayKetThuc;
    }

    public float getGiaThue() {
        return giaThue;
    }

    public Xe getXe() {
        return xe;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNgayBatDau(Date ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    public void setNgayKetThuc(Date ngayKetThuc) {
        this.ngayKetThuc = ngayKetThuc;
    }

    public void setGiaThue(float giaThue) {
        this.giaThue = giaThue;
    }

    public void setXe(Xe xe) {
        this.xe = xe;
    }
    
}
