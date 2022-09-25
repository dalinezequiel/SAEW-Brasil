package com.sae.model;

import java.sql.Date;

public class AvaliacaoDeIntervencaoModel {
	private int idAvaliacao;
	private String avaliacao;
	private String resposta;
	private String saturacaoOxigenioAcima94;
	private String estadoFisiologicoFrequenciaCardiaca;
	private String controleAspiracaoViasAerea;
	private String hidratacao;
	private String estadoCoagulacao;
	private String eliminacaoUrinaria;
	private String eliminacaoIntestinal;
	private String estadoNeurologicoConsciencia;
	private String termoregulacao;
	private String nivelDor;
	private String bemEstarEspiritual;
	private String controleRiscoInfencao;
	private String observacao;
	private Date dataUltimaActualizacao;
	private Date dataRegisto;
	private int idPaciente;
	private String paciente;
	private int total;

	public AvaliacaoDeIntervencaoModel() {
		super();
		saturacaoOxigenioAcima94 = "Saturação de O2 acima de 94%";
		estadoFisiologicoFrequenciaCardiaca = "Estado fisiológico da frequência respiratória";
		controleAspiracaoViasAerea = "Controle da aspiração de vias aéreas";
		hidratacao = "Hidratação";
		estadoCoagulacao = "Estado de coagulação";
		eliminacaoUrinaria = "Eliminação urinária";
		eliminacaoIntestinal = "Eliminação intestínal";
		estadoNeurologicoConsciencia = "Estado neurológico da consciência";
		termoregulacao = "Termorregulação";
		nivelDor = "Nível da dor";
		bemEstarEspiritual = "Bem estar espiritual";
		controleRiscoInfencao = "Controle de risco para infecção";
	}

	public AvaliacaoDeIntervencaoModel(int idAvaliacao, String avaliacao, String resposta,
			String saturacaoOxigenioAcima94, String estadoFisiologicoFrequenciaCardiaca,
			String controleAspiracaoViasAerea, String hidratacao, String estadoCoagulacao, String eliminacaoUrinaria,
			String eliminacaoIntestinal, String estadoNeurologicoConsciencia, String termoregulacao, String nivelDor,
			String bemEstarEspiritual, String controleRiscoInfencao, String observacao, Date dataUltimaActualizacao,
			Date dataRegisto, int idPaciente, String paciente, int total) {
		super();
		this.idAvaliacao = idAvaliacao;
		this.avaliacao = avaliacao;
		this.resposta = resposta;
		this.saturacaoOxigenioAcima94 = saturacaoOxigenioAcima94;
		this.estadoFisiologicoFrequenciaCardiaca = estadoFisiologicoFrequenciaCardiaca;
		this.controleAspiracaoViasAerea = controleAspiracaoViasAerea;
		this.hidratacao = hidratacao;
		this.estadoCoagulacao = estadoCoagulacao;
		this.eliminacaoUrinaria = eliminacaoUrinaria;
		this.eliminacaoIntestinal = eliminacaoIntestinal;
		this.estadoNeurologicoConsciencia = estadoNeurologicoConsciencia;
		this.termoregulacao = termoregulacao;
		this.nivelDor = nivelDor;
		this.bemEstarEspiritual = bemEstarEspiritual;
		this.controleRiscoInfencao = controleRiscoInfencao;
		this.observacao = observacao;
		this.dataUltimaActualizacao = dataUltimaActualizacao;
		this.dataRegisto = dataRegisto;
		this.idPaciente = idPaciente;
		this.paciente = paciente;
		this.total = total;
	}

	public int getIdAvaliacao() {
		return idAvaliacao;
	}

	public void setIdAvaliacao(int idAvaliacao) {
		this.idAvaliacao = idAvaliacao;
	}

	public String getAvaliacao() {
		return avaliacao;
	}

	public void setAvaliacao(String avaliacao) {
		this.avaliacao = avaliacao;
	}

	public String getResposta() {
		return resposta;
	}

	public void setResposta(String resposta) {
		this.resposta = resposta;
	}

	public String getSaturacaoOxigenioAcima94() {
		return saturacaoOxigenioAcima94;
	}

	public void setSaturacaoOxigenioAcima94(String saturacaoOxigenioAcima94) {
		this.saturacaoOxigenioAcima94 = saturacaoOxigenioAcima94;
	}

	public String getEstadoFisiologicoFrequenciaCardiaca() {
		return estadoFisiologicoFrequenciaCardiaca;
	}

	public void setEstadoFisiologicoFrequenciaCardiaca(String estadoFisiologicoFrequenciaCardiaca) {
		this.estadoFisiologicoFrequenciaCardiaca = estadoFisiologicoFrequenciaCardiaca;
	}

	public String getControleAspiracaoViasAerea() {
		return controleAspiracaoViasAerea;
	}

	public void setControleAspiracaoViasAerea(String controleAspiracaoViasAerea) {
		this.controleAspiracaoViasAerea = controleAspiracaoViasAerea;
	}

	public String getHidratacao() {
		return hidratacao;
	}

	public void setHidratacao(String hidratacao) {
		this.hidratacao = hidratacao;
	}

	public String getEstadoCoagulacao() {
		return estadoCoagulacao;
	}

	public void setEstadoCoagulacao(String estadoCoagulacao) {
		this.estadoCoagulacao = estadoCoagulacao;
	}

	public String getEliminacaoUrinaria() {
		return eliminacaoUrinaria;
	}

	public void setEliminacaoUrinaria(String eliminacaoUrinaria) {
		this.eliminacaoUrinaria = eliminacaoUrinaria;
	}

	public String getEliminacaoIntestinal() {
		return eliminacaoIntestinal;
	}

	public void setEliminacaoIntestinal(String eliminacaoIntestinal) {
		this.eliminacaoIntestinal = eliminacaoIntestinal;
	}

	public String getEstadoNeurologicoConsciencia() {
		return estadoNeurologicoConsciencia;
	}

	public void setEstadoNeurologicoConsciencia(String estadoNeurologicoConsciencia) {
		this.estadoNeurologicoConsciencia = estadoNeurologicoConsciencia;
	}

	public String getTermoregulacao() {
		return termoregulacao;
	}

	public void setTermoregulacao(String termoregulacao) {
		this.termoregulacao = termoregulacao;
	}

	public String getNivelDor() {
		return nivelDor;
	}

	public void setNivelDor(String nivelDor) {
		this.nivelDor = nivelDor;
	}

	public String getBemEstarEspiritual() {
		return bemEstarEspiritual;
	}

	public void setBemEstarEspiritual(String bemEstarEspiritual) {
		this.bemEstarEspiritual = bemEstarEspiritual;
	}

	public String getControleRiscoInfencao() {
		return controleRiscoInfencao;
	}

	public void setControleRiscoInfencao(String controleRiscoInfencao) {
		this.controleRiscoInfencao = controleRiscoInfencao;
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
