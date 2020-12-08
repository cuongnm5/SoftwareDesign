/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.dao;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import src.model.HoTen;
import src.model.DiaChi;
import src.model.ThanhVien;
/**
 *
 * @author local
 */
public class ThanhVienDAO extends DAO{
    public ThanhVienDAO(){
        super();
    }
    
    public boolean ktraDangNhap(ThanhVien tv){
        boolean result = false;
        if(tv.getUsername().contains("true") || tv.getUsername().contains("=")||
                tv.getPassword().contains("true") || tv.getPassword().contains("=")) return false;
        String sql = "{call kiemtraDN(?,?)}"; //su dung stored procedure
        try{
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1,tv.getUsername());
            cs.setString(2,tv.getPassword());
            ResultSet rs = cs.executeQuery();
             
            if(rs.next()){
                tv.setId(rs.getInt("id"));
                tv.setVaitro(rs.getString("vaiTro"));
                //hoten
                HoTen ht = new HoTen();
                ht.setTenDem(rs.getString("tenDem"));
                ht.setTen(rs.getString("ten"));
                ht.setHo(rs.getString("ho"));
                tv.setHoTen(ht);
                result = true;
            }
        }catch(Exception e){
            e.printStackTrace();
            result = false;
        }
       
        return result;
    }
}
