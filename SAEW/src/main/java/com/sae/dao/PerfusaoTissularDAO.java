package com.sae.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sae.model.*;

public class PerfusaoTissularDAO {

    private static Connection con = null;
    private static PreparedStatement pst = null;
    private static ResultSet rs = null;
    
    private static ArrayList<PerfusaoTissularModel> listaPt = null;
    private static PerfusaoTissularModel ptModel = null;

    public static ArrayList<PerfusaoTissularModel> listaPerfusaoTissular() {
    	listaPt = new ArrayList<PerfusaoTissularModel>();
        try {
            String SQL_SELECT_QUERY = "SELECT * from perfusao_tissular";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(SQL_SELECT_QUERY);
            rs = pst.executeQuery();

            while (rs.next()) {
            	ptModel = new PerfusaoTissularModel();
            	ptModel.setIdPerfusaoTissular(rs.getInt("id_perfusao_tisul"));
            	ptModel.setPerfusaoTissular(rs.getString("perfusao_tisul"));
            	listaPt.add(ptModel);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaPt;
    }
}
