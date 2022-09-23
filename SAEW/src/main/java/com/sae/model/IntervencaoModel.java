package com.sae.model;

import java.sql.Date;

public class IntervencaoModel {
	private int idIntervencao;
	private String intervencao;
	private String resposta;
	private String realizarCurativo;
	private String observacao;
	private Date dataUltimaActualizacao;
	private Date dataRegisto;
	private int idPaciente;
	private String paciente;
	private int total;

	public IntervencaoModel() {
		super();
	}

	public IntervencaoModel(int idIntervencao, String intervencao, String resposta, String realizarCurativo,
			String observacao, Date dataUltimaActualizacao, Date dataRegisto, int idPaciente, String paciente,
			int total) {
		super();
		this.idIntervencao = idIntervencao;
		this.intervencao = intervencao;
		this.resposta = resposta;
		this.realizarCurativo = realizarCurativo;
		this.observacao = observacao;
		this.dataUltimaActualizacao = dataUltimaActualizacao;
		this.dataRegisto = dataRegisto;
		this.idPaciente = idPaciente;
		this.paciente = paciente;
		this.total = total;
	}

	public int getIdIntervencao() {
		return idIntervencao;
	}

	public void setIdIntervencao(int idIntervencao) {
		this.idIntervencao = idIntervencao;
	}

	public String getIntervencao() {
		return intervencao;
	}

	public void setIntervencao(String intervencao) {
		this.intervencao = intervencao;
	}

	public String getResposta() {
		return resposta;
	}

	public void setResposta(String resposta) {
		this.resposta = resposta;
	}

	public String getRealizarCurativo() {
		return realizarCurativo;
	}

	public void setRealizarCurativo(String realizarCurativo) {
		this.realizarCurativo = realizarCurativo;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public Date getDataUltimaActualizacao() {
		return dataUltimaActualizacao;
	}

	public void setDataUltimaActualizacao(Date dataUltimaActualizacao) {
		this.dataUltimaActualizacao = dataUltimaActualizacao;
	}

	public Date getDataRegisto() {
		return dataRegisto;
	}

	public void setDataRegisto(Date dataRegisto) {
		this.dataRegisto = dataRegisto;
	}

	public int getIdPaciente() {
		return idPaciente;
	}

	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}

	public String getPaciente() {
		return paciente;
	}

	public void setPaciente(String paciente) {
		this.paciente = paciente;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
}
