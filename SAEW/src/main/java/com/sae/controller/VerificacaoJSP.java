package com.sae.controller;

import java.util.*;
import com.sae.model.*;

public class VerificacaoJSP {

	public VerificacaoJSP() {
		super();
	}
	
	public static boolean verificaCheckBox(String diagnostico, ArrayList<DiagnosticoModel> listDiag) {
		for(int i=0; i<listDiag.size(); i++) {
			if(listDiag.get(i).getDiagnostico().equals(diagnostico)) {
				return true;
			}
		}
		return false;
	}
	
	public static boolean verificaComboBox(String diagnostico, ArrayList<DiagnosticoModel> listDiag) {
		for(int i=0; i<listDiag.size(); i++) {
			if(listDiag.get(i).getResposta().equals(diagnostico)) {
				return true;
			}
		}
		return false;
	}
	
	public static boolean verificarSeRealmenteEInt(String texto) {
		try {
			Integer.parseInt(texto);
			return true;
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return false;
	}
}
