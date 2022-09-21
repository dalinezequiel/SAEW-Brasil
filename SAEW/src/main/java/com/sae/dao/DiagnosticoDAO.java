package com.sae.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sae.model.*;

public class DiagnosticoDAO {

    private static Connection con = null;
    private static PreparedStatement pst = null;
    private static ResultSet rs = null;
    
    private static ArrayList<DiagnosticoModel> listaDiag = null;
    private static DiagnosticoModel diagModel = null;
    
    //CADASTRO DE DIAGNÓSTICOS
    public static boolean cadastroDeDiagnostico(DiagnosticoModel diag) {
        try {
            String SQL_INSERT_QUERY = "INSERT INTO diagnostico(id_diagnostico, diagnostico, resposta, obs, ultima_actualizacao,  data_registo, id_paciente, paciente)values(?,?,?,?,?,?,?,?)";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(SQL_INSERT_QUERY);

            pst.setInt(1, diag.getIdDiagnostico());
            pst.setString(2, diag.getDiagnostico());
            pst.setString(3, diag.getResposta());
            pst.setString(4, diag.getObservacao());
            pst.setDate(5, diag.getDataUltimaActualizacao());
            pst.setDate(6, diag.getDataRegisto());
            pst.setInt(7, diag.getIdPaciente());
            pst.setString(8, diag.getPaciente());

            pst.execute();
            return true;
        } catch (SQLException e) {
        	e.printStackTrace();
        }
        return false;
    }
    
    //LISTAGEM DE TODOS DE DIAGNÓSTICOS
    public static ArrayList<DiagnosticoModel> listaDiagnostico() {
    	listaDiag = new ArrayList<DiagnosticoModel>();
        try {
            String SQL_SELECT_QUERY = "SELECT * from diagnostico";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(SQL_SELECT_QUERY);
            rs = pst.executeQuery();

            while (rs.next()) {
            	diagModel = new DiagnosticoModel();
            	diagModel.setIdDiagnostico(rs.getInt("id_diagnostico"));
            	diagModel.setDiagnostico(rs.getString("diagnostico"));
            	diagModel.setResposta(rs.getString("resposta"));
            	diagModel.setObservacao(rs.getString("obs"));
            	diagModel.setDataUltimaActualizacao(rs.getDate("ultima_actualizacao"));
            	diagModel.setDataRegisto(rs.getDate("data_registo"));
            	diagModel.setIdPaciente(rs.getInt("id_paciente"));
            	diagModel.setPaciente(rs.getString("paciente"));
            	listaDiag.add(diagModel);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaDiag;
    }
    
  //LISTAGEM DE TODOS DE DIAGNÓSTICOS PELO CÓDIGO
    public static ArrayList<DiagnosticoModel> listaDiagnosticoById(int id_diagnostico) {
    	listaDiag = new ArrayList<DiagnosticoModel>();
        try {
            String SQL_SELECT_QUERY = "SELECT * from diagnostico WHERE id_diagnostico = ?";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(SQL_SELECT_QUERY);
            pst.setInt(1, id_diagnostico);
            rs = pst.executeQuery();

            while (rs.next()) {
            	diagModel = new DiagnosticoModel();
            	diagModel.setIdDiagnostico(rs.getInt("id_diagnostico"));
            	diagModel.setDiagnostico(rs.getString("diagnostico"));
            	diagModel.setResposta(rs.getString("resposta"));
            	diagModel.setObservacao(rs.getString("obs"));
            	diagModel.setDataUltimaActualizacao(rs.getDate("ultima_actualizacao"));
            	diagModel.setDataRegisto(rs.getDate("data_registo"));
            	diagModel.setIdPaciente(rs.getInt("id_paciente"));
            	diagModel.setPaciente(rs.getString("paciente"));
            	listaDiag.add(diagModel);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaDiag;
    }
    
    //RETORNAR O TOTAL DE TODOS DE DIAGNÓSTICOS
    public static ArrayList<DiagnosticoModel> getTotalDiagnosticoWithDistinct() {
    	listaDiag = new ArrayList<DiagnosticoModel>();
        try {
            String SQL_SELECT_QUERY = "SELECT count(distinct(id_diagnostico)) as total from diagnostico;";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(SQL_SELECT_QUERY);
            rs = pst.executeQuery();

            while (rs.next()) {
            	diagModel = new DiagnosticoModel();
            	diagModel.setTotal(rs.getInt("total"));
            	listaDiag.add(diagModel);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaDiag;
    }

    public static void deleteDiagnosticoById(int id_diagnostico) {
        try {
            String SQL_DELETE_QUERY = "DELETE FROM diagnostico WHERE id_diagnostico = ?";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(SQL_DELETE_QUERY);
            pst.setInt(1, id_diagnostico);
            pst.executeUpdate();

        } catch (SQLException e) {
        	e.printStackTrace();
        }
    }

    public static void actualizaDiagnostico(DiagnosticoModel diag) {
        try {
            String SQL_UPDATE_QUERY = "UPDATE paciente SET diagnostico = ?, resposta = ?, obs = ?, ultima_actualizacao, data_registo = ? WHERE id_diagnostico = ?";
            con = ConexaoSQL.getConnection();
            pst = con.prepareStatement(SQL_UPDATE_QUERY);

            pst.setInt(1, diag.getIdDiagnostico());
            pst.setString(2, diag.getDiagnostico());
            pst.setString(3, diag.getResposta());
            pst.setString(4, diag.getObservacao());
            pst.setDate(5, diag.getDataUltimaActualizacao());
            pst.setDate(6, diag.getDataRegisto());
            pst.setInt(7, diag.getIdPaciente());
            pst.setString(8, diag.getPaciente());

            pst.executeUpdate();
            pst.close();
            con.close();

        } catch (SQLException e) {
        	e.printStackTrace();
        }
    }
 public static void main(String[]args) {
	 System.out.println(DiagnosticoDAO.getTotalDiagnosticoWithDistinct().get(0).getTotal());
 }
}
