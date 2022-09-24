package com.sae.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sae.model.*;

public class IntervencaoDAO {

	private static Connection con = null;
	private static PreparedStatement pst = null;
	private static ResultSet rs = null;

	private static ArrayList<IntervencaoModel> listaInter = null;
	private static IntervencaoModel interModel = null;
	private static ArrayList<ComboBoxModel> listaComboBox = null;
	private static ComboBoxModel comboBoxModel = null;

	// CADASTRO DE INTERVENÇÕES
	public static boolean cadastroDeIntervencao(IntervencaoModel inter) {
		try {
			String SQL_INSERT_QUERY = "INSERT INTO intervencao (id_intervencao, intervencao, resposta, obs, ultima_actualizacao, data_registo, id_paciente, paciente)values(?,?,?,?,?,?,?,?)";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_INSERT_QUERY);

			pst.setInt(1, inter.getIdIntervencao());
			pst.setString(2, inter.getIntervencao());
			pst.setString(3, inter.getResposta());
			pst.setString(4, inter.getObservacao());
			pst.setDate(5, inter.getDataUltimaActualizacao());
			pst.setDate(6, inter.getDataRegisto());
			pst.setInt(7, inter.getIdPaciente());
			pst.setString(8, inter.getPaciente());

			pst.execute();
			return true;
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return false;
	}

	// LISTAGEM DE TODAS INTERVENÇÕES
	public static ArrayList<IntervencaoModel> listaIntervencao() {
		listaInter = new ArrayList<IntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT * from intervencao";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			rs = pst.executeQuery();

			while (rs.next()) {
				interModel = new IntervencaoModel();
				interModel.setIdIntervencao(rs.getInt("id_intervencao"));
				interModel.setIntervencao(rs.getString("intervencao"));
				interModel.setResposta(rs.getString("resposta"));
				interModel.setObservacao(rs.getString("obs"));
				interModel.setDataUltimaActualizacao(rs.getDate("ultima_actualizacao"));
				interModel.setDataRegisto(rs.getDate("data_registo"));
				interModel.setIdPaciente(rs.getInt("id_paciente"));
				interModel.setPaciente(rs.getString("paciente"));
				listaInter.add(interModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaInter;
	}

	// LISTAGEM DE TODAS INTERVENÇÕES PELO CÓDIGO
	public static ArrayList<IntervencaoModel> listaIntervencaoById(int id_intervencao) {
		listaInter = new ArrayList<IntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT * from intervencao WHERE id_intervencao = ?";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			pst.setInt(1, id_intervencao);
			rs = pst.executeQuery();

			while (rs.next()) {
				interModel = new IntervencaoModel();
				interModel.setIdIntervencao(rs.getInt("id_intervencao"));
				interModel.setIntervencao(rs.getString("intervencao"));
				interModel.setResposta(rs.getString("resposta"));
				interModel.setObservacao(rs.getString("obs"));
				interModel.setDataUltimaActualizacao(rs.getDate("ultima_actualizacao"));
				interModel.setDataRegisto(rs.getDate("data_registo"));
				interModel.setIdPaciente(rs.getInt("id_paciente"));
				interModel.setPaciente(rs.getString("paciente"));
				listaInter.add(interModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaInter;
	}

	// LISTAGEM DE TODAS INTERVENÇOÕES COM RECURSO A VÁRIOS PARÂMETROS
	public static ArrayList<IntervencaoModel> listaIntervencaoByMultipleParameters(int id_intervencao, String paciente,
			String queixa_principal) {
		listaInter = new ArrayList<IntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT d.id_intervencao, d.intervencao, d.resposta, \r\n"
					+ "d.id_paciente, d.paciente, d.ultima_actualizacao, d.data_registo \r\n"
					+ "from intervencao as d\r\n" + "where  d.id_intervencao = ? or d.paciente = ?\r\n"
					+ "or d.id_paciente = (\r\n"
					+ "	select paciente.id_paciente from paciente where queixa_principal = ?\r\n" + ");";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			pst.setInt(1, id_intervencao);
			pst.setString(2, paciente);
			pst.setString(3, queixa_principal);
			rs = pst.executeQuery();

			while (rs.next()) {
				interModel = new IntervencaoModel();
				interModel.setIdIntervencao(rs.getInt("id_intervencao"));
				interModel.setIntervencao(rs.getString("intervencao"));
				interModel.setResposta(rs.getString("resposta"));
				// interModel.setObservacao(rs.getString("obs"));
				interModel.setDataUltimaActualizacao(rs.getDate("ultima_actualizacao"));
				interModel.setDataRegisto(rs.getDate("data_registo"));
				interModel.setIdPaciente(rs.getInt("id_paciente"));
				interModel.setPaciente(rs.getString("paciente"));
				listaInter.add(interModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaInter;
	}

	// RETORNAR O TOTAL DE TODAS INTERVENÇÕES
	public static ArrayList<IntervencaoModel> getTotalIntervencaoWithDistinct() {
		listaInter = new ArrayList<IntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT count(distinct(id_intervencao)) as total from intervencao;";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			rs = pst.executeQuery();

			while (rs.next()) {
				interModel = new IntervencaoModel();
				interModel.setTotal(rs.getInt("total"));
				listaInter.add(interModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaInter;
	}

	// RETORNAR O TOTAL DE TODAS INTERVENÇÕES USANDO VÁRIOS PARÂMETROS
	public static int getTotalIntervencaoWithDistinct(int id_intervencao, String paciente, String queixa_principal) {
		listaInter = new ArrayList<IntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "select count(distinct(id_intervencao)) as total\r\n" + "from intervencao\r\n"
					+ "where id_intervencao = ? or paciente = ?\r\n" + "or  paciente = (\r\n"
					+ "	select paciente from paciente where queixa_principal = ?\r\n" + ");";

			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			pst.setInt(1, id_intervencao);
			pst.setString(2, paciente);
			pst.setString(3, queixa_principal);
			rs = pst.executeQuery();

			while (rs.next()) {
				interModel = new IntervencaoModel();
				interModel.setTotal(rs.getInt("total"));
				listaInter.add(interModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaInter.get(0).getTotal();
	}

	// LISTAGEM DE ACESSO VENOSO PERIFÉRICO
	public static ArrayList<ComboBoxModel> listaAcessoVenosoPeriferico() {
		listaComboBox = new ArrayList<ComboBoxModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT * from acesso_venoso_periferico";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			rs = pst.executeQuery();

			while (rs.next()) {
				comboBoxModel = new ComboBoxModel();
				comboBoxModel.setIdComboBox(rs.getInt("id_acesso_venoso_periferico"));
				comboBoxModel.setComboBoxItem(rs.getString("acesso_venoso_periferico"));
				listaComboBox.add(comboBoxModel);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaComboBox;
	}

	// EXCLUÍ O INTERVENÇÃO PELO CÓDIGO
	public static boolean deleteIntervencaoById(int id_intervencao) {
		try {
			String SQL_DELETE_QUERY = "DELETE FROM intervencao WHERE id_intervencao = ?";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_DELETE_QUERY);
			pst.setInt(1, id_intervencao);
			pst.executeUpdate();
			pst.close();

			return true;
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return false;
	}
}
