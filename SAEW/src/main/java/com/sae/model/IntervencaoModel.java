package com.sae.model;

import java.sql.Date;

public class IntervencaoModel {
	private int idIntervencao;
	private String intervencao;
	private String resposta;
	private String realizarCurativo;
	private String verificarHgt;
	private String verificarSaturacaoOxigenio;
	private String auxiliarBanhoLeito;
	private String aspiracaoOrotraqueal;
	private String observacao;
	private Date dataUltimaActualizacao;
	private Date dataRegisto;
	private int idPaciente;
	private String paciente;
	private int total;

	public IntervencaoModel() {
		super();
		realizarCurativo = "Realizar curativo";
		verificarHgt = "Verificar HGT";
		verificarSaturacaoOxigenio = "Verificar a saturação de oxigênio";
		auxiliarBanhoLeito = "Realizar/ auxiliar banho no leito";
		aspiracaoOrotraqueal = "Realizar aspiração orotraqueal";
	}

	public IntervencaoModel(int idIntervencao, String intervencao, String resposta, String realizarCurativo,
			String verificarHgt, String verificarSaturacaoOxigenio, String auxiliarBanhoLeito,
			String aspiracaoOrotraqueal, String observacao, Date dataUltimaActualizacao, Date dataRegisto,
			int idPaciente, String paciente, int total) {
		super();
		this.idIntervencao = idIntervencao;
		this.intervencao = intervencao;
		this.resposta = resposta;
		this.realizarCurativo = realizarCurativo;
		this.verificarHgt = verificarHgt;
		this.verificarSaturacaoOxigenio = verificarSaturacaoOxigenio;
		this.auxiliarBanhoLeito = auxiliarBanhoLeito;
		this.aspiracaoOrotraqueal = aspiracaoOrotraqueal;
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

	public String getVerificarHgt() {
		return verificarHgt;
	}

	public void setVerificarHgt(String verificarHgt) {
		this.verificarHgt = verificarHgt;
	}

	public String getVerificarSaturacaoOxigenio() {
		return verificarSaturacaoOxigenio;
	}

	public void setVerificarSaturacaoOxigenio(String verificarSaturacaoOxigenio) {
		this.verificarSaturacaoOxigenio = verificarSaturacaoOxigenio;
	}

	public String getAuxiliarBanhoLeito() {
		return auxiliarBanhoLeito;
	}

	public void setAuxiliarBanhoLeito(String auxiliarBanhoLeito) {
		this.auxiliarBanhoLeito = auxiliarBanhoLeito;
	}

	public String getAspiracaoOrotraqueal() {
		return aspiracaoOrotraqueal;
	}

	public void setAspiracaoOrotraqueal(String aspiracaoOrotraqueal) {
		this.aspiracaoOrotraqueal = aspiracaoOrotraqueal;
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
