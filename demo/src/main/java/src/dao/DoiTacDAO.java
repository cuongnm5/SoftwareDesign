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

    public int getLastId(String tbl) {
        int result = 0;
        String sql;
        if (tbl.equals("tblHoTen")) {
            sql = "SELECT * FROM tblHoTen";
        } else{
            sql = "SELECT * FROM tblDiaChi";
        }
        
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
                cs2.setInt(1, rs.getInt("tblHoTenid"));
                cs3.setInt(1, rs.getInt("tblDiaChiid"));
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
                else if(ten.equals(hoTen.getTenDem())){
                    DoiTac doiTac = new DoiTac(
                            rs.getInt("id"),
                            rs.getString("SDT"),
                            rs.getString("email"),
                            hoTen, diaChi,
                            rs.getDate("ngaySinh")
                    );
                    result.add(doiTac);
                }                
                else if(ten.equals(hoTen.getHo())){
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

    public DoiTac getDoiTacById(int id) {
        DoiTac result = new DoiTac();
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
                    diaChi.setQuanHuyen(rs3.getString("quanHuyen"));
                    diaChi.setTinhThanh(rs3.getString("tinhThanh"));
                }
                if (id == rs.getInt("id")) {
                    DoiTac doiTac = new DoiTac(
                            rs.getInt("id"),
                            rs.getString("SDT"),
                            rs.getString("email"),
                            hoTen, diaChi,
                            rs.getDate("ngaySinh")
                    );
                    result = doiTac;
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public boolean updateThongTin(DoiTac doiTac) {
        boolean result = false;
        String sql = "UPDATE tblDoiTac SET ngaySinh=? , email=? , SDT=? WHERE id=?";
        String sql2 = "UPDATE tblDiaChi SET soNha=?,phuongXa=?,quanHuyen=?,tinhThanh=? WHERE id=?";
        String sql3 = "UPDATE tblHoTen SET ho=? ,tenDem=? ,ten=? WHERE id=?";

        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setDate(1, doiTac.getNgaySinh());
            cs.setString(2, doiTac.getEmail());
            cs.setString(3, doiTac.getSDT());
            cs.setInt(4, doiTac.getId());
            int rs = cs.executeUpdate();

            DiaChi diaChi = doiTac.getDiaChi();
            CallableStatement cs2 = con.prepareCall(sql2);
            cs2.setString(1, diaChi.getSoNha());
            cs2.setString(2, diaChi.getPhuongXa());
            cs2.setString(3, diaChi.getQuanHuyen());
            cs2.setString(4, diaChi.getTinhThanh());
            cs2.setInt(5, diaChi.getId());
            int rs2 = cs2.executeUpdate();

            HoTen hoTen = doiTac.getHoTen();
            CallableStatement cs3 = con.prepareCall(sql3);
            cs3.setString(1, hoTen.getHo());
            cs3.setString(2, hoTen.getTenDem());
            cs3.setString(3, hoTen.getTen());
            cs3.setInt(4, hoTen.getId());
            int rs3 = cs3.executeUpdate();

            System.out.println("Update thanh cong!!");
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return result;
    }

    public boolean xoa(int id) {
        boolean result = false;
        String sql = "DELETE FROM tblDoiTac WHERE id=?";

        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, id);
            int rs = cs.executeUpdate();

            System.out.println("Xoa thanh cong!!");
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return result;
    }

    public boolean luu(DoiTac doiTac) {
        boolean result = false;
        String sql = "INSERT INTO tblDoiTac(ngaySinh,email,SDT,tblHoTenid,tblDiaChiid) VALUES (?,?,?,?,?)";
        String sql2 = "INSERT INTO tblDiaChi(soNha,phuongXa,quanHuyen,tinhThanh) VALUES (?,?,?,?)";
        String sql3 = "INSERT INTO tblHoTen(ho,tenDem,ten) VALUES (?,?,?)";

        try {
            DiaChi diaChi = doiTac.getDiaChi();
            CallableStatement cs2 = con.prepareCall(sql2);
            cs2.setString(1, diaChi.getSoNha());
            cs2.setString(2, diaChi.getPhuongXa());
            cs2.setString(3, diaChi.getQuanHuyen());
            cs2.setString(4, diaChi.getTinhThanh());
            int rs2 = cs2.executeUpdate();

            HoTen hoTen = doiTac.getHoTen();
            CallableStatement cs3 = con.prepareCall(sql3);
            cs3.setString(1, hoTen.getHo());
            cs3.setString(2, hoTen.getTenDem());
            cs3.setString(3, hoTen.getTen());
            int rs3 = cs3.executeUpdate();

            CallableStatement cs = con.prepareCall(sql);
            cs.setDate(1, doiTac.getNgaySinh());
            cs.setString(2, doiTac.getEmail());
            cs.setString(3, doiTac.getSDT());
            int lastIdHoTen = getLastId("tblHoTen");
            int lastIdDiaChi = getLastId("tblDiaChi");
            cs.setInt(4, lastIdHoTen);
            cs.setInt(5, lastIdDiaChi);
            int rs = cs.executeUpdate();

            System.out.println("Insert thanh cong!!");
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return result;
    }

    public static void main(String[] args) {
        ArrayList<DoiTac> listDoiTac = (new DoiTacDAO()).getDSDoiTac();
        System.out.println(listDoiTac.size());
        for (DoiTac doiTac : listDoiTac) {
            System.out.println(Integer.toString(doiTac.getId()));
        }
    }
}
