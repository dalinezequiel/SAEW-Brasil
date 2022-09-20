package com.sae.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.sql.Date;

public class Data {
	private static String formatoAno = null;
	public Data() {
		super();
		formatoAno = "yyyy";
	}

	protected static int getDataInformada(String dataNascimento) {
		return Integer.parseInt(new SimpleDateFormat(formatoAno).format(Date.valueOf(dataNascimento)));

	}
	
	protected static int getDataActual() {
		return Integer.parseInt(new SimpleDateFormat(formatoAno).format(Date.valueOf(LocalDate.now())));
	}
	
	public int getIdadeProcessada(String dataNascimento) {
		return getDataActual() - getDataInformada(dataNascimento);
	}
}
