/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.dao;

import java.sql.CallableStatement;
import java.util.ArrayList;
import static src.dao.DAO.con;
import src.model.HoaDon;
import src.model.HopDong;
import src.model.XeThueLai;

/**
 *
 * @author local
 */
public class HoaDonDAO extends DAO{

    public HoaDonDAO() {
        super();
    }
    
    public boolean luu(HoaDon hoaDon){
        boolean result = false;
        String sql = "INSERT INTO tblHoaDon(giaTien, moTa, thoiGianThanhToan, tblDoiTacid, tblHopDongid, tblNhanVienid) VALUES (?,?,?,?,?,?)";

        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setFloat(1, hoaDon.getGiaTien());
            cs.setString(2, hoaDon.getBillPath());
            cs.setDate(3, hoaDon.getThoiGianThanhToan());
            cs.setInt(4, hoaDon.getDoiTac().getId());
            cs.setInt(5, hoaDon.getHopDong().getId());
            cs.setInt(6,hoaDon.getThuNgan().getId());
            int rs = cs.executeUpdate();

            String sql2 = "UPDATE tblHopDong SET trangThai=? WHERE id=?";
            CallableStatement cs2 = con.prepareCall(sql2);
            cs2.setString(1, "da thanh toan");
            cs2.setInt(2, hoaDon.getHopDong().getId());
            int rs2 = cs2.executeUpdate();
            
            System.out.println("Insert thanh cong!!");
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return result;
    }
    
}
