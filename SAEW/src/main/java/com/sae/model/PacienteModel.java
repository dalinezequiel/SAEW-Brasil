package com.sae.model;

import java.sql.Date;
public class PacienteModel {
	private int idPaciente;
	private String paciente;
	private Date dataNascimento;
	private int leito;
	private String queixaPrincipal;
	private Date dataInternacao;
	private Date dataRegisto;
	private Date dataUltimaActualizacao;
	
	public PacienteModel() {
		super();
	}
	
	public PacienteModel(int idPaciente, String paciente, Date dataNascimento, int leito, String queixaPrincipal,
			Date dataInternacao, Date dataRegisto, Date dataUltimaActualizacao) {
		super();
		this.idPaciente = idPaciente;
		this.paciente = paciente;
		this.dataNascimento = dataNascimento;
		this.leito = leito;
		this.queixaPrincipal = queixaPrincipal;
		this.dataInternacao = dataInternacao;
		this.dataRegisto = dataRegisto;
		this.dataUltimaActualizacao = dataUltimaActualizacao;
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

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public int getLeito() {
		return leito;
	}

	public void setLeito(int leito) {
		this.leito = leito;
	}

	public String getQueixaPrincipal() {
		return queixaPrincipal;
	}

	public void setQueixaPrincipal(String queixaPrincipal) {
		this.queixaPrincipal = queixaPrincipal;
	}

	public Date getDataInternacao() {
		return dataInternacao;
	}

	public void setDataInternacao(Date dataInternacao) {
		this.dataInternacao = dataInternacao;
	}

	public Date getDataRegisto() {
		return dataRegisto;
	}

	public void setDataRegisto(Date dataRegisto) {
		this.dataRegisto = dataRegisto;
	}

	public Date getDataUltimaActualizacao() {
		return dataUltimaActualizacao;
	}

	public void setDataUltimaActualizacao(Date dataUltimaActualizacao) {
		this.dataUltimaActualizacao = dataUltimaActualizacao;
	}
	
}
