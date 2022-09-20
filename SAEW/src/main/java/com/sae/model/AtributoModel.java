package com.sae.model;

public class AtributoModel {
	//ATRIBUTOS A
	private String varString;
	private byte varByte;
	private int varInt;
	private float varFloat;
	private double varDouble;
	private boolean varboolean;
	
	//ATRIBUTOS B
	private String [] anyArrayString;
	
	public AtributoModel() {
		super();
	}

	public String getVarString() {
		return varString;
	}

	public void setVarString(String varString) {
		this.varString = varString;
	}

	public byte getVarByte() {
		return varByte;
	}

	public void setVarByte(byte varByte) {
		this.varByte = varByte;
	}

	public int getVarInt() {
		return varInt;
	}

	public void setVarInt(int varInt) {
		this.varInt = varInt;
	}

	public float getVarFloat() {
		return varFloat;
	}

	public void setVarFloat(float varFloat) {
		this.varFloat = varFloat;
	}

	public double getVarDouble() {
		return varDouble;
	}

	public void setVarDouble(double varDouble) {
		this.varDouble = varDouble;
	}

	public boolean isVarboolean() {
		return varboolean;
	}

	public void setVarboolean(boolean varboolean) {
		this.varboolean = varboolean;
	}

	public String[] getAnyArrayString() {
		return anyArrayString;
	}

	public void setAnyArrayString(String[] anyArrayString) {
		this.anyArrayString = anyArrayString;
	}
}
