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
import java.util.logging.Level;
import java.util.logging.Logger;
import src.model.DiaChi;
import src.model.DoiTac;
import src.model.HoTen;

/**
 *
 * @author local
 */
public class DoiTacDAO extends DAO {

    public DoiTacDAO() {
        super();
    }

    public ArrayList<DoiTac> getDSDoiTac() {
        ArrayList result = new ArrayList<DoiTac>();
        String sql = "select * from tblDoiTac";
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();

            while (rs.next()) {

                String sqlHT = "select * from tblHoTen where id=?";
                String sqlDC = "select * from tblDiaChi where id=?";

                CallableStatement cs2 = con.prepareCall(sqlHT);
                CallableStatement cs3 = con.prepareCall(sqlDC);

                ResultSet rs2 = cs2.executeQuery();
                ResultSet rs3 = cs3.executeQuery();

                HoTen hoTen = new HoTen();
                DiaChi diaChi = new DiaChi();

                if (rs2.next()) {
                    hoTen.setId(rs2.getInt("id"));
                    hoTen.setHo(rs2.getString("ho"));
                    hoTen.setTen(rs2.getString("ten"));
                    hoTen.setTenDem(rs2.getString("tenDem"));
                }
                if (rs3.next()) {
                    diaChi.setId(rs3.getInt("id"));
                    diaChi.setSoNha(rs3.getString("soNha"));
                    diaChi.setPhuongXa(rs3.getString("phuongXa"));
                    diaChi.setToaNha(rs3.getString("toaNha"));
                    diaChi.setQuanHuyen(rs3.getString("quanHuyen"));
                    diaChi.setTinhThanh(rs3.getString("tinhThanh"));
                }

                DoiTac doiTac = new DoiTac(
                        rs.getInt("id"),
                        rs.getString("SDT"),
                        rs.getString("email"),
                        hoTen, diaChi,
                        rs.getDate("ngaySinh")
                );
                result.add(doiTac);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public ArrayList<DoiTac> getDoiTac(String ten) {
        ArrayList result = new ArrayList<DoiTac>();
        String sql = "select * from tblDoiTac";
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();

            while (rs.next()) {

                String sqlHT = "select * from tblHoTen where id=?";
                String sqlDC = "select * from tblDiaChi where id=?";

                CallableStatement cs2 = con.prepareCall(sqlHT);
                CallableStatement cs3 = con.prepareCall(sqlDC);
                
                cs2.setString(1, rs.getString("tblHoTenid"));
                cs3.setString(1, rs.getString("tblDiaChiid"));
                
                ResultSet rs2 = cs2.executeQuery();
                ResultSet rs3 = cs3.executeQuery();

                HoTen hoTen = new HoTen();
                DiaChi diaChi = new DiaChi();

                if (rs2.next()) {
                    hoTen.setId(rs2.getInt("id"));
                    hoTen.setHo(rs2.getString("ho"));
                    hoTen.setTen(rs2.getString("ten"));
                    hoTen.setTenDem(rs2.getString("tenDem"));
                }
                if (rs3.next()) {
                    diaChi.setId(rs3.getInt("id"));
                    diaChi.setSoNha(rs3.getString("soNha"));
                    diaChi.setPhuongXa(rs3.getString("phuongXa"));
                    diaChi.setToaNha(rs3.getString("toaNha"));
                    diaChi.setQuanHuyen(rs3.getString("quanHuyen"));
                    diaChi.setTinhThanh(rs3.getString("tinhThanh"));
                }
                if (ten.equals(hoTen.getTen())) {
                    DoiTac doiTac = new DoiTac(
                            rs.getInt("id"),
                            rs.getString("SDT"),
                            rs.getString("email"),
                            hoTen, diaChi,
                            rs.getDate("ngaySinh")
                    );
                    result.add(doiTac);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }
    
    public boolean updateThongTin(DoiTac doiTac){
        boolean result = false;
        String sql = "update ... from tblDoiTac";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, doiTac.getId());
            ResultSet rs = cs.executeQuery();
            

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        return result;
    }

}
