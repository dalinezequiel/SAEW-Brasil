package com.sae.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.sae.model.AvaliacaoDeIntervencaoModel;

public class AvaliacaoDeIntervencaoDAO {

	private static Connection con = null;
	private static PreparedStatement pst = null;
	private static ResultSet rs = null;

	private static ArrayList<AvaliacaoDeIntervencaoModel> listaAvaliacao = null;
	private static AvaliacaoDeIntervencaoModel avaliaModel = null;

	// CADASTRO DE AVALIAÇÕES
	public static boolean cadastroDeAvaliacaoDeIntervencao(AvaliacaoDeIntervencaoModel avalia) {
		try {
			String SQL_INSERT_QUERY = "INSERT INTO avaliacao_intervencao (id_avaliacao_intervencao, avaliacao_intervencao, resposta, obs, ultima_actualizacao, data_registo, id_paciente, paciente)values(?,?,?,?,?,?,?,?)";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_INSERT_QUERY);

			pst.setInt(1, avalia.getIdAvaliacao());
			pst.setString(2, avalia.getAvaliacao());
			pst.setString(3, avalia.getResposta());
			pst.setString(4, avalia.getObservacao());
			pst.setDate(5, avalia.getDataUltimaActualizacao());
			pst.setDate(6, avalia.getDataRegisto());
			pst.setInt(7, avalia.getIdPaciente());
			pst.setString(8, avalia.getPaciente());

			pst.execute();
			return true;
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return false;
	}

	// LISTAGEM DE TODAS INTERVENÇÕES
	public static ArrayList<AvaliacaoDeIntervencaoModel> listaAvaliacaoDeIntervencao() {
		listaAvaliacao = new ArrayList<AvaliacaoDeIntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT * from avaliacao_intervencao";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			rs = pst.executeQuery();

			while (rs.next()) {
				avaliaModel = new AvaliacaoDeIntervencaoModel();
				avaliaModel.setIdAvaliacao(rs.getInt("id_avaliacao_intervencao"));
				avaliaModel.setAvaliacao(rs.getString("avaliacao_intervencao"));
				avaliaModel.setResposta(rs.getString("resposta"));
				avaliaModel.setObservacao(rs.getString("obs"));
				avaliaModel.setDataUltimaActualizacao(rs.getDate("ultima_actualizacao"));
				avaliaModel.setDataRegisto(rs.getDate("data_registo"));
				avaliaModel.setIdPaciente(rs.getInt("id_paciente"));
				avaliaModel.setPaciente(rs.getString("paciente"));
				listaAvaliacao.add(avaliaModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaAvaliacao;
	}

	// LISTAGEM DE TODAS AVALIAÇÕES PELO CÓDIGO
	public static ArrayList<AvaliacaoDeIntervencaoModel> listaAvaliacaoDeIntervencaoById(int id_intervencao) {
		listaAvaliacao = new ArrayList<AvaliacaoDeIntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT * from avaliacao_intervencao WHERE id_avaliacao_intervencao = ?";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			pst.setInt(1, id_intervencao);
			rs = pst.executeQuery();

			while (rs.next()) {
				avaliaModel = new AvaliacaoDeIntervencaoModel();
				avaliaModel.setIdAvaliacao(rs.getInt("id_avaliacao_intervencao"));
				avaliaModel.setAvaliacao(rs.getString("avaliacao_intervencao"));
				avaliaModel.setResposta(rs.getString("resposta"));
				avaliaModel.setObservacao(rs.getString("obs"));
				avaliaModel.setDataUltimaActualizacao(rs.getDate("ultima_actualizacao"));
				avaliaModel.setDataRegisto(rs.getDate("data_registo"));
				avaliaModel.setIdPaciente(rs.getInt("id_paciente"));
				avaliaModel.setPaciente(rs.getString("paciente"));
				listaAvaliacao.add(avaliaModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaAvaliacao;
	}

	// LISTAGEM DE TODAS AVALIAÇÕES COM RECURSO A VÁRIOS PARÂMETROS
	public static ArrayList<AvaliacaoDeIntervencaoModel> listaAvaliacaoDeIntervencaoByMultipleParameters(
			int id_avaliacao_intervencao, String paciente, String queixa_principal) {
		listaAvaliacao = new ArrayList<AvaliacaoDeIntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT d.id_avaliacao_intervencao, d.avaliacao_intervencao, d.resposta, \r\n"
					+ "d.id_paciente, d.paciente, d.ultima_actualizacao, d.data_registo \r\n"
					+ "from avaliacao_intervencao as d\r\n" + "where  id_avaliacao_intervencao = ? or d.paciente = ?\r\n"
					+ "or d.id_paciente = (\r\n"
					+ "	select paciente.id_paciente from paciente where queixa_principal = ?\r\n" + ");";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			pst.setInt(1, id_avaliacao_intervencao);
			pst.setString(2, paciente);
			pst.setString(3, queixa_principal);
			rs = pst.executeQuery();

			while (rs.next()) {
				avaliaModel = new AvaliacaoDeIntervencaoModel();
				avaliaModel.setIdAvaliacao(rs.getInt("id_avaliacao_intervencao"));
				avaliaModel.setAvaliacao(rs.getString("avaliacao_intervencao"));
				avaliaModel.setResposta(rs.getString("resposta"));
				//avaliaModel.setObservacao(rs.getString("obs"));
				avaliaModel.setDataUltimaActualizacao(rs.getDate("ultima_actualizacao"));
				avaliaModel.setDataRegisto(rs.getDate("data_registo"));
				avaliaModel.setIdPaciente(rs.getInt("id_paciente"));
				avaliaModel.setPaciente(rs.getString("paciente"));
				listaAvaliacao.add(avaliaModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaAvaliacao;
	}

	// RETORNAR O TOTAL DE TODAS AVALIAÇÕES
	public static ArrayList<AvaliacaoDeIntervencaoModel> getTotalAvaliacaoDeIntervencaoWithDistinct() {
		listaAvaliacao = new ArrayList<AvaliacaoDeIntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT count(distinct(id_avaliacao_intervencao)) as total from avaliacao_intervencao;";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			rs = pst.executeQuery();

			while (rs.next()) {
				avaliaModel = new AvaliacaoDeIntervencaoModel();
				avaliaModel.setTotal(rs.getInt("total"));
				listaAvaliacao.add(avaliaModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaAvaliacao;
	}

	// RETORNAR O TOTAL DE TODAS AVALIAÇÕES USANDO VÁRIOS PARÂMETROS
	public static int getTotalAvaliacaoDeIntervencaoWithDistinct(int id_avaliacao_intervencao, String paciente,
			String queixa_principal) {
		listaAvaliacao = new ArrayList<AvaliacaoDeIntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "select count(distinct(id_avaliacao_intervencao)) as total\r\n"
					+ "from avaliacao_intervencao\r\n" + "where id_avaliacao_intervencao = ? or paciente = ?\r\n"
					+ "or  paciente = (\r\n" + "select paciente from paciente where queixa_principal = ?\r\n"
					+ ");";

			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			pst.setInt(1, id_avaliacao_intervencao);
			pst.setString(2, paciente);
			pst.setString(3, queixa_principal);
			rs = pst.executeQuery();

			while (rs.next()) {
				avaliaModel = new AvaliacaoDeIntervencaoModel();
				avaliaModel.setTotal(rs.getInt("total"));
				listaAvaliacao.add(avaliaModel);
			}
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro!\n" + e.getMessage());
		}
		return listaAvaliacao.get(0).getTotal();
	}
	public static void main(String [] args) {
		System.out.println(AvaliacaoDeIntervencaoDAO.listaAvaliacaoDeIntervencaoByMultipleParameters(462541, "", ""));
	}

}
