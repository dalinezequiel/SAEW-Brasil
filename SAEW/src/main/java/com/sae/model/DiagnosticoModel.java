package com.sae.model;

import java.sql.Date;

public class DiagnosticoModel {
	private int idDiagnostico;
	private String diagnostico;
	private String resposta;
	private int idPaciente;
	private String paciente;
	private int idEnfermeiro;
	private String enfermeiro;
	private String observacao;
	private Date dataUltimaActualizacao;
	private Date dataRegisto;

	public DiagnosticoModel() {
		super();
	}

	public DiagnosticoModel(int idDiagnostico, String diagnostico, String resposta, int idPaciente, String paciente,
			int idEnfermeiro, String enfermeiro, String observacao, Date dataUltimaActualizacao, Date dataRegisto) {
		super();
		this.idDiagnostico = idDiagnostico;
		this.diagnostico = diagnostico;
		this.resposta = resposta;
		this.idPaciente = idPaciente;
		this.paciente = paciente;
		this.idEnfermeiro = idEnfermeiro;
		this.enfermeiro = enfermeiro;
		this.observacao = observacao;
		this.dataUltimaActualizacao = dataUltimaActualizacao;
		this.dataRegisto = dataRegisto;
	}

	public int getIdDiagnostico() {
		return idDiagnostico;
	}

	public void setIdDiagnostico(int idDiagnostico) {
		this.idDiagnostico = idDiagnostico;
	}

	public String getDiagnostico() {
		return diagnostico;
	}

	public void setDiagnostico(String diagnostico) {
		this.diagnostico = diagnostico;
	}

	public String getResposta() {
		return resposta;
	}

	public void setResposta(String resposta) {
		this.resposta = resposta;
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

	public int getIdEnfermeiro() {
		return idEnfermeiro;
	}

	public void setIdEnfermeiro(int idEnfermeiro) {
		this.idEnfermeiro = idEnfermeiro;
	}

	public String getEnfermeiro() {
		return enfermeiro;
	}

	public void setEnfermeiro(String enfermeiro) {
		this.enfermeiro = enfermeiro;
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

}
