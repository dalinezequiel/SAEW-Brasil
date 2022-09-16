package com.sae.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sae.model.*;

public class DiagnosticoSQL {

    private static Connection con = null;
    private static PreparedStatement pst = null;
    private static ResultSet rs = null;
    
    private static ArrayList<DiagnosticoModel> listaDiag = null;
    private static DiagnosticoModel diagModel = null;

    public static void cadastroDiag(DiagnosticoModel diag) {
        try {
            String insert = "INSERT INTO teste(id_teste,teste)values(?,?)";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(insert);

            pst.setInt(1, diag.getCodigo());
            pst.setString(2, diag.getTeste());

            pst.execute();

        } catch (SQLException e) {
        	e.printStackTrace();
        }
    }
    
    public static ArrayList<DiagnosticoModel> consultaDiagnostico() {
    	listaDiag = new ArrayList<DiagnosticoModel>();
        try {
            String select = "SELECT * from teste";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(select);
            rs = pst.executeQuery();

            while (rs.next()) {
            	diagModel = new DiagnosticoModel();
            	diagModel.setCodigo(rs.getInt("id_teste"));
            	diagModel.setTeste(rs.getString("teste"));
            	listaDiag.add(diagModel);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaDiag;
    }


    public static void deleteById(int codigo) {
        try {
            String deleteQuery = "DELETE FROM tb_teste WHERE Codigo = ?";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(deleteQuery);
            pst.setInt(1, codigo);
            pst.executeUpdate();

        } catch (SQLException e) {
        	e.printStackTrace();
        }
    }

    public static void actualizaAll(DiagnosticoModel diag) {
        try {
            String updateQuery = "UPDATE tb_teste SET teste = ? WHERE codigo = ?";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(updateQuery);

            pst.setInt(1, diag.getCodigo());
            pst.setString(2, diag.getTeste());

            pst.executeUpdate();
            pst.close();
            con.close();

        } catch (SQLException e) {
        	e.printStackTrace();
        }
    }
 
}
