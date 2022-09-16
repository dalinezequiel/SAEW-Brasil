package com.sae.model;

public class DiagnosticoModel {
	private int codigo;
	private String teste;

	public DiagnosticoModel() {
		super();
	}

	public DiagnosticoModel(int codigo, String teste) {
		super();
		this.codigo = codigo;
		this.teste = teste;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getTeste() {
		return teste;
	}

	public void setTeste(String teste) {
		this.teste = teste;
	}
}
