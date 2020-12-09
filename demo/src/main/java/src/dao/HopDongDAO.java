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
import src.model.DiaChi;
import src.model.DoiTac;
import src.model.HoTen;
import src.model.HopDong;
import src.model.Xe;
import src.model.XeThueLai;

/**
 *
 * @author local
 */
public class HopDongDAO extends DAO {

    public HopDongDAO() {
        super();
    }

    public int getLastId() {
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

    public boolean luu(HopDong hopDong, ArrayList<XeThueLai> listXe) {
        boolean result = false;
        String sql = "INSERT INTO tblHopDong(ngayTao, thongTinThanhToan, tblThanhVienid, tblDoiTacid, trangThai) VALUES (?,?,?,?,?)";

        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setDate(1, hopDong.getNgayTao());
            cs.setString(2, hopDong.getThongTinThanhToan());
            cs.setInt(3, hopDong.getLeTan().getId());
            cs.setInt(4, hopDong.getDoiTac().getId());
            cs.setString(5, "Chua thanh toan");
            int rs = cs.executeUpdate();

            XeThueLaiDAO dao = new XeThueLaiDAO();

            for (XeThueLai xe : listXe) {
                dao.luu(xe);
            }

            System.out.println("Insert thanh cong!!");
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return result;
    }

    public ArrayList<HopDong> getDSHopDong() {
        ArrayList<HopDong> listHD = new ArrayList<HopDong>();
        String sql = "select * from tblHopDong";
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();

            while (rs.next()) {
                
                HopDong hopDong = new HopDong();

                ArrayList<XeThueLai> listXe = (new XeThueLaiDAO()).getListXeById(rs.getInt("id"));

                String sql2 = "select * from tblDoiTac where id=?";

                CallableStatement cs2 = con.prepareCall(sql2);
                cs2.setInt(1, rs.getInt("tblDoiTacid"));
                ResultSet rs2 = cs2.executeQuery();
                
                DoiTac doiTac = null;
                if (rs2.next()){
                    doiTac = (new DoiTacDAO()).getDoiTacById(rs2.getInt("id"));
                }
                hopDong.setId(rs.getInt("id"));
                hopDong.setDoiTac(doiTac);
                hopDong.setNgayTao(rs.getDate("ngayTao"));
                hopDong.setThongTinThanhToan(rs.getString("thongTinThanhToan"));
                hopDong.setTrangThai(rs.getString("trangThai"));
                hopDong.setListXeThueLai(listXe);
                listHD.add(hopDong);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return listHD;
    }
    
    public ArrayList<HopDong> getHopDong(String name) {
        ArrayList<HopDong> listHD = new ArrayList<HopDong>();
        String sql = "select * from tblHopDong";
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();

            while (rs.next()) {
                
                HopDong hopDong = new HopDong();

                ArrayList<XeThueLai> listXe = (new XeThueLaiDAO()).getListXeById(rs.getInt("id"));

                String sql2 = "select * from tblDoiTac where id=?";

                CallableStatement cs2 = con.prepareCall(sql2);
                cs2.setInt(1, rs.getInt("tblDoiTacid"));
                ResultSet rs2 = cs2.executeQuery();
                
                DoiTac doiTac = null;
                if (rs2.next()){
                    doiTac = (new DoiTacDAO()).getDoiTacById(rs2.getInt("id"));
                }
                hopDong.setId(rs.getInt("id"));
                hopDong.setDoiTac(doiTac);
                hopDong.setNgayTao(rs.getDate("ngayTao"));
                hopDong.setThongTinThanhToan(rs.getString("thongTinThanhToan"));
                hopDong.setTrangThai(rs.getString("trangThai"));
                hopDong.setListXeThueLai(listXe);
                if(hopDong.getDoiTac().getHoTen().getTen().equals(name)){
                   listHD.add(hopDong); 
                }
                
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return listHD;
    }
    
    public HopDong getHopDongById(int id) {
        HopDong hd = null;
        String sql = "select * from tblHopDong";
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();

            while (rs.next()) {
                
                HopDong hopDong = new HopDong();

                ArrayList<XeThueLai> listXe = (new XeThueLaiDAO()).getListXeById(rs.getInt("id"));

                String sql2 = "select * from tblDoiTac where id=?";

                CallableStatement cs2 = con.prepareCall(sql2);
                cs2.setInt(1, rs.getInt("tblDoiTacid"));
                ResultSet rs2 = cs2.executeQuery();
                
                DoiTac doiTac = null;
                if (rs2.next()){
                    doiTac = (new DoiTacDAO()).getDoiTacById(rs2.getInt("id"));
                }
                hopDong.setId(rs.getInt("id"));
                hopDong.setDoiTac(doiTac);
                hopDong.setNgayTao(rs.getDate("ngayTao"));
                hopDong.setThongTinThanhToan(rs.getString("thongTinThanhToan"));
                hopDong.setListXeThueLai(listXe);
                
                if(hopDong.getId()==id){
                    return hopDong;
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return hd;
    }
}
