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
	public static boolean cadastroDeIntervencao(AvaliacaoDeIntervencaoModel avalia) {
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
	public static ArrayList<AvaliacaoDeIntervencaoModel> listaIntervencao() {
		listaAvaliacao = new ArrayList<AvaliacaoDeIntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT * from avaliacao_intervencao";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			rs = pst.executeQuery();

			while (rs.next()) {
				avaliaModel = new AvaliacaoDeIntervencaoModel();
				avaliaModel.setIdAvaliacao(rs.getInt("id_intervencao"));
				avaliaModel.setAvaliacao(rs.getString("intervencao"));
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
	public static ArrayList<AvaliacaoDeIntervencaoModel> listaIntervencaoById(int id_intervencao) {
		listaAvaliacao = new ArrayList<AvaliacaoDeIntervencaoModel>();
		try {
			String SQL_SELECT_QUERY = "SELECT * from avaliacao_intervencao WHERE id_avaliacao_intervencao = ?";
			con = ConexaoSQL.getConnection();
			pst = con.prepareStatement(SQL_SELECT_QUERY);
			pst.setInt(1, id_intervencao);
			rs = pst.executeQuery();

			while (rs.next()) {
				avaliaModel = new AvaliacaoDeIntervencaoModel();
				avaliaModel.setIdAvaliacao(rs.getInt("id_intervencao"));
				avaliaModel.setAvaliacao(rs.getString("intervencao"));
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
}
