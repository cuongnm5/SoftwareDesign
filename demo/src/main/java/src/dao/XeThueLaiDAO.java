/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import static src.dao.DAO.con;
import src.model.DoiTac;
import src.model.HopDong;
import src.model.Xe;
import src.model.XeThueLai;

/**
 *
 * @author local
 */
public class XeThueLaiDAO extends DAO{

    public XeThueLaiDAO() {
        super();
    }
    
    public int getLastId() {
        int result = 0;
        String sql = "SELECT * FROM tblXe";
        
        CallableStatement cs;
        try {
            cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                result = rs.getInt("id");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;
    }
    
      public int getLastIdHD() {
        int result = 0;
        String sql = "SELECT * FROM tblHopDong";
        
        CallableStatement cs;
        try {
            cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                result = rs.getInt("id");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;
    }  
      
    public boolean luu(XeThueLai xeThueLai){
        boolean result = false;
        String sql = "INSERT INTO tblXe(tenHang, loai, namSX, soDangKy, bienSoXe) VALUES (?,?,?,?,?)";
        String sql2 = "INSERT INTO tblXeThueLai(ngayBatDau, ngayKetThuc, giaThue, tblXeid, tblHopDongid) VALUES (?,?,?,?,?)";

        try {
            Xe xe = xeThueLai.getXe();
            System.out.println(xe);
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1, xe.getTenHang());
            cs.setString(2, xe.getLoai());
            cs.setString(3, xe.getNamSX());
            cs.setString(4, xe.getSoDangKy());
            cs.setString(5, xe.getBienSoXe());
            int rs = cs.executeUpdate();

            CallableStatement cs2 = con.prepareCall(sql2);
            cs2.setDate(1, xeThueLai.getNgayBatDau());
            cs2.setDate(2, xeThueLai.getNgayKetThuc());
            cs2.setFloat(3, xeThueLai.getGiaThue());
            cs2.setInt(4, getLastId());
            cs2.setInt(5, getLastIdHD());
            int rs2 = cs2.executeUpdate();

            System.out.println("Insert thanh cong!!");
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }
    
    public ArrayList<XeThueLai> getListXeById(int id){
        ArrayList<XeThueLai> result = new ArrayList<XeThueLai>();
        String sql = "select * from tblXeThueLai WHERE tblHopDongid=?";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, id);
            ResultSet rs = cs.executeQuery();

            while (rs.next()) {
                XeThueLai xeThueLai = new XeThueLai();
                Xe xe = new Xe();
                String sql2 = "select * from tblXe where id=?";

                CallableStatement cs2 = con.prepareCall(sql2);
                cs2.setInt(1, rs.getInt("tblXeid"));
                ResultSet rs2 = cs2.executeQuery();
                
                if (rs2.next()){
                    xe.setId(rs2.getInt("id"));
                    xe.setTenHang(rs2.getString("tenHang"));
                    xe.setLoai(rs2.getString("loai"));
                    xe.setNamSX(rs2.getString("namSX"));
                    xe.setSoDangKy(rs2.getString("soDangKy"));
                    xe.setBienSoXe(rs2.getString("bienSoXe"));
                }
                xeThueLai.setId(rs.getInt("id"));
                xeThueLai.setGiaThue(rs.getFloat("giaThue"));
                xeThueLai.setNgayBatDau(rs.getDate("ngayBatDau"));
                xeThueLai.setNgayKetThuc(rs.getDate("ngayKetThuc"));
                xeThueLai.setXe(xe);
                result.add(xeThueLai);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }
    
}
