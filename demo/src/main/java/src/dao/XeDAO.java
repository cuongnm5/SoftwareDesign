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
import src.model.Xe;

/**
 *
 * @author local
 */
public class XeDAO extends DAO{
    public XeDAO() {
        super();
    }
    
    public int getLastId(String tbl){
        int result = 0;
        String sql = "SELECT * FROM ?";
        CallableStatement cs;
        try {
            cs = con.prepareCall(sql);
            cs.setString(1, tbl);
            ResultSet rs = cs.executeQuery();
            while (rs.next()){
                result = rs.getInt("id");
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return result;
    }
    
    public boolean luu(Xe xe){
        boolean result = false;
        int lastId = getLastId("tblXe");
        String sql = "INSERT INTO tblXe ('tenHang','loai','namSX','soDangKy','bienSoXe') VALUES (?,?,?,?,?)";
        CallableStatement cs;
        try {
            cs = con.prepareCall(sql);
            cs.setString(1, xe.getTenHang());
            cs.setString(2, xe.getLoai());
            cs.setString(3, xe.getNamSX());
            cs.setString(4, xe.getSoDangKy());
            cs.setString(5, xe.getBienSoXe());
            ResultSet rs = cs.executeQuery();
            System.out.println("Them xe moi thanh cong");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        String sql2 = "INSERT INTO tblXeThueLai ('tblXeid') VALUES (?)";
        try {
            CallableStatement cs2 = con.prepareCall(sql2);
            cs2.setInt(1, lastId+1);
            ResultSet rs2 = cs2.executeQuery();
            System.out.println("Them xe thue lai thanh cong");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return result;
    }
}
