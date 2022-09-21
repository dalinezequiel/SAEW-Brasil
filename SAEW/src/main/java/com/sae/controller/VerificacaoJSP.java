package com.sae.controller;

import java.util.*;
import com.sae.dao.*;
import com.sae.model.*;

public class VerificacaoJSP {
	private static ArrayList<DiagnosticoModel>listDiag = null;
	
	public VerificacaoJSP() {
		super();
	}
	
	public static boolean verificaCheckBox(int id, String diagnostico) {
		listDiag = DiagnosticoDAO.listaDiagnosticoById(id);
		for(int i=0; i<listDiag.size(); i++) {
			if(listDiag.get(i).getDiagnostico().equals(diagnostico)) {
				return true;
			}
		}
		return false;
	}
	
	public static boolean verificaComboBox(int id, String diagnostico) {
		listDiag = DiagnosticoDAO.listaDiagnosticoById(id);
		for(int i=0; i<listDiag.size(); i++) {
			if(listDiag.get(i).getResposta().equals(diagnostico)) {
				return true;
			}
		}
		return false;
	}
}
