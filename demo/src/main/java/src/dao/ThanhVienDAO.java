/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import src.model.HoTen;
import src.model.DiaChi;
import src.model.ThanhVien;

/**
 *
 * @author local
 */
public class ThanhVienDAO extends DAO {

    public ThanhVienDAO() {
        super();
    }

    public boolean ktraDangNhap(ThanhVien tv) {
        boolean result = false;
        if (tv.getUsername().contains("true") || tv.getUsername().contains("=")
                || tv.getPassword().contains("true") || tv.getPassword().contains("=")) {
            return false;
        }
        String sql = "SELECT * FROM tblThanhVien WHERE username=? AND password=?"; 
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1, tv.getUsername());
            cs.setString(2, tv.getPassword());
            ResultSet rs = cs.executeQuery();

            if (rs.next()) {
                result = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            result = false;
        }

        return result;
    }

    public ThanhVien getThanhVien(String username) {
        ThanhVien tv = new ThanhVien();
        String sql = "SELECT * FROM tblThanhVien WHERE username = ?";

        CallableStatement cs;
        try {
            cs = con.prepareCall(sql);
            cs.setString(1, username);
            ResultSet rs = cs.executeQuery();
            if (rs.next()) {
                String sqlHT = "select * from tblHoTen where id=?";

                CallableStatement cs2 = con.prepareCall(sqlHT);
                cs2.setInt(1, rs.getInt("tblHoTenid"));
                ResultSet rs2 = cs2.executeQuery();

                HoTen hoTen = new HoTen();

                if (rs2.next()) {
                    hoTen.setId(rs2.getInt("id"));
                    hoTen.setHo(rs2.getString("ho"));
                    hoTen.setTen(rs2.getString("ten"));
                    hoTen.setTenDem(rs2.getString("tenDem"));
                }
                tv.setId(rs.getInt("id"));
                tv.setHoTen(hoTen);
                tv.setVaitro(rs.getString("vaiTro"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return tv;
    }
}
