package com.sae.controller;

import java.util.Random;
import com.sae.model.*;

public class GeradorDeCodigo {
	private AtributoModel atr = null;
	private Random random = null;

	public GeradorDeCodigo() {
		super();
		atr = new AtributoModel();
		random = new Random();
	}

	public int gerandoCodigo() {
		atr.setVarInt(random.nextInt(999999));
		if (atr.getVarInt() < 100000) {
			while (atr.getVarInt() < 100000) {
				atr.setVarInt(random.nextInt(999999));
			}
			return atr.getVarInt();
		} else {
			return atr.getVarInt();
		}
	}
}
