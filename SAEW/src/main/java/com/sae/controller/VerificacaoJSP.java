package com.sae.controller;

import java.util.*;

import com.sae.model.*;

public class VerificacaoJSP {
	private static AtributoModel atr = null;

	public VerificacaoJSP() {
		super();
	}

	public static boolean verificaCheckBox(String diagnostico, ArrayList<DiagnosticoModel> listDiag) {
		for (int i = 0; i < listDiag.size(); i++) {
			if (listDiag.get(i).getDiagnostico().equals(diagnostico)) {
				return true;
			}
		}
		return false;
	}

	public static boolean verificaComboBox(String diagnostico, ArrayList<DiagnosticoModel> listDiag) {
		for (int i = 0; i < listDiag.size(); i++) {
			if (listDiag.get(i).getResposta().equals(diagnostico)) {
				return true;
			}
		}
		return false;
	}
	
	public static boolean verificarSeRealmenteEInt(String texto) {
		try {
			Integer.parseInt(texto);
			return true;
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}

		return false;
	}
	
	//INTERVENÇÕES
	public static boolean verificaCheckBoxInter(String intervencao, ArrayList<IntervencaoModel> listInter) {
		for (int i = 0; i < listInter.size(); i++) {
			if (listInter.get(i).getIntervencao().equals(intervencao)) {
				return true;
			}
		}
		return false;
	}

	
	public static boolean verificaComboBoxInter(String intervencao, ArrayList<IntervencaoModel> listInter) {
		for (int i = 0; i < listInter.size(); i++) {
			if (listInter.get(i).getResposta().equals(intervencao)) {
				return true;
			}
		}
		return false;
	}

	public static String verificaIgualidadeNoInput(String intervencao, ArrayList<IntervencaoModel> listInter) {
		for (int i = 0; i < listInter.size(); i++) {
			if (listInter.get(i).getIntervencao().equals(intervencao)) {
				return listInter.get(i).getResposta();
			}
		}
		return null;
	}

	public static String devolveDivisaoDoItemDoInput(String intervencao, int posicaoDoItem) {
		if (intervencao != null && (!intervencao.isEmpty()) && (posicaoDoItem == 0) || posicaoDoItem == 1) {
			atr = new AtributoModel();
			atr.setVarString(String.valueOf(intervencao));
			atr.setAnyArrayString(atr.getVarString().split(" ", 2));

			return atr.getAnyArrayString()[posicaoDoItem];
		}
		return null;
	}
	
	public static String devolveDivisaoDoItemDoInputParaData(String intervencao, int posicaoDoItem) {
		if (intervencao != null && (!intervencao.isEmpty()) && (posicaoDoItem == 0) || posicaoDoItem == 1) {
			atr = new AtributoModel();
			atr.setVarString(String.valueOf(intervencao));
			atr.setAnyArrayString(atr.getVarString().split(" ", 2));

			atr.setVarString("0");
			if (atr.getAnyArrayString().length == 2 && (posicaoDoItem == 0 || posicaoDoItem == 1)) {
				atr.setVarString(atr.getAnyArrayString()[posicaoDoItem]);

			} else if (atr.getAnyArrayString().length == 1 && posicaoDoItem == 0) {
				atr.setVarString(atr.getAnyArrayString()[posicaoDoItem]);

			} else {
				atr.setVarString("00-00-00");
			}
		}
		return atr.getVarString();
	}

	public static char devolveCaracterDaPrimeiraPosicao(String intervencao) {
		if (intervencao != null && (!intervencao.isEmpty())) {
			return intervencao.charAt(0);
		}
		return 0;
	}
	
	public static String devolveAHora(String intervencao) {
		if (intervencao != null && (!intervencao.isEmpty())) {
			atr = new AtributoModel();
			atr.setVarString(String.valueOf(intervencao.charAt(0)) + String.valueOf(intervencao.charAt(1))
					+ String.valueOf(intervencao.charAt(2)) + String.valueOf(intervencao.charAt(3))
					+ String.valueOf(intervencao.charAt(4)));
			return atr.getVarString();
		}
		return null;
	}
	
	public static String verificaEDevolveResposta(String intervencao, ArrayList<IntervencaoModel> listInter) {
		atr = new AtributoModel();
		atr.setVarString("");
		for (int i = 0; i < listInter.size(); i++) {
			if (listInter.get(i).getIntervencao().equals(intervencao)) {
				atr.setVarString(listInter.get(i).getResposta());
			}
		}
		return atr.getVarString();
	}


	public static void main(String[] args) {
		/*String m = VerificacaoJSP.devolveDivisaoDoItemDoInput(VerificacaoJSP.verificaIgualidadeNoInput(
				"Realizar/ auxiliar banho no leito", IntervencaoDAO.listaIntervencaoById(114465)), 0);
		System.out.println(m);
		System.out.println(VerificacaoJSP.devolveAHora(m));*/
		System.out.println(VerificacaoJSP.devolveDivisaoDoItemDoInput("Fabiana Maria", 0));
	}
}
