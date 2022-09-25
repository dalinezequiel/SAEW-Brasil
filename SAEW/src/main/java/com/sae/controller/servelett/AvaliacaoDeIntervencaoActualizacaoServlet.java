package com.sae.controller.servelett;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;

import com.sae.controller.VerificacaoJSP;
import com.sae.dao.AvaliacaoDeIntervencaoDAO;
import com.sae.model.AtributoModel;
import com.sae.model.AvaliacaoDeIntervencaoModel;

/**
 * Servlet implementation class AvaliacaoDeIntervencaoActualizacaoServlet
 */
public class AvaliacaoDeIntervencaoActualizacaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AvaliacaoDeIntervencaoModel avaliacaoDeIntervencaoModel, avaliacaoModel = null;
	private ArrayList<String> listaAvaliacaoResposta = null;
	private AtributoModel atr = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AvaliacaoDeIntervencaoActualizacaoServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		atr = new AtributoModel();
		atr.setVarString(request.getParameter("salva_paciente"));
		if (atr.getVarString().equals("Sim")) {
			// tratamentoDoPossivelErro(this.dado_paciente(inter, pat, request, response),
			// request, response);
			//listaAvaliacaoResposta.clear();

		} else {
			tratamentoDoPossivelErro(this.dado_avaliacao_intervencao(request, response), request, response);
			listaAvaliacaoResposta.clear();
		}
	}

	// DADDOS DA AVALIACAO
	public boolean dado_avaliacao_intervencao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean rsp = true;
		avaliacaoModel = new AvaliacaoDeIntervencaoModel();
		avaliacaoDeIntervencaoModel = this.avaliacaoDeIntervencaoModel(request, response);
		listaAvaliacaoResposta = this.listaNova(avaliacaoDeIntervencaoModel);
		AvaliacaoDeIntervencaoDAO
				.deleteAvaliacaoDeIntervencaoById(Integer.parseInt(request.getParameter("cod_avaliac").trim()));
		if (listaAvaliacaoResposta != null) {
			for (int i = 0; i < listaAvaliacaoResposta.size(); i++) {
				atr.setAnyArrayString(
						VerificacaoJSP.anyArraydevolveDivisaoDoItemPorDois("_", listaAvaliacaoResposta.get(i)));

				avaliacaoModel.setIdAvaliacao(avaliacaoDeIntervencaoModel.getIdAvaliacao());
				if ((atr.getAnyArrayString()[0]).equals("sa")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getSaturacaoOxigenioAcima94());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("ef")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getEstadoFisiologicoFrequenciaCardiaca());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("ca")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getControleAspiracaoViasAerea());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("hi")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getHidratacao());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("ec")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getEstadoCoagulacao());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("eu")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getEliminacaoUrinaria());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("ei")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getEliminacaoIntestinal());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("en")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getEstadoNeurologicoConsciencia());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("te")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getTermoregulacao());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("nd")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getNivelDor());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("be")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getBemEstarEspiritual());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);

				} else if ((atr.getAnyArrayString()[0].trim()).equals("cr")) {
					avaliacaoModel.setAvaliacao(avaliacaoModel.getControleRiscoInfencao());
					avaliacaoModel.setResposta(atr.getAnyArrayString()[1]);
				}

				avaliacaoModel.setObservacao(avaliacaoDeIntervencaoModel.getObservacao());
				avaliacaoModel.setDataUltimaActualizacao(avaliacaoDeIntervencaoModel.getDataUltimaActualizacao());
				avaliacaoModel.setDataRegisto(avaliacaoDeIntervencaoModel.getDataRegisto());
				avaliacaoModel.setIdPaciente(avaliacaoDeIntervencaoModel.getIdPaciente());
				avaliacaoModel.setPaciente(avaliacaoDeIntervencaoModel.getPaciente());

				rsp = AvaliacaoDeIntervencaoDAO.cadastroDeAvaliacaoDeIntervencao(avaliacaoModel);
			}

		}
		return rsp;
	}

	// TRATAMENTO DO ERRO AO SALVAR OS DADOS
	public void tratamentoDoPossivelErro(boolean rsp, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (rsp) {
			response.sendRedirect("jsp/avaliacao_intervencao_consult.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}

	public AvaliacaoDeIntervencaoModel avaliacaoDeIntervencaoModel(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		avaliacaoDeIntervencaoModel = new AvaliacaoDeIntervencaoModel();
		avaliacaoDeIntervencaoModel.setIdAvaliacao(Integer.parseInt(request.getParameter("cod_avaliac").trim()));
		avaliacaoDeIntervencaoModel.setSaturacaoOxigenioAcima94(request.getParameter("saturacao_oxigenio"));
		avaliacaoDeIntervencaoModel.setEstadoFisiologicoFrequenciaCardiaca(request.getParameter("estado_fisiologico"));
		avaliacaoDeIntervencaoModel.setControleAspiracaoViasAerea(request.getParameter("controle_aspiracao"));
		avaliacaoDeIntervencaoModel.setHidratacao(request.getParameter("hidratacao"));
		avaliacaoDeIntervencaoModel.setEstadoCoagulacao(request.getParameter("estado_coagulacao"));
		avaliacaoDeIntervencaoModel.setEliminacaoUrinaria(request.getParameter("eliminacao_urinaria"));
		avaliacaoDeIntervencaoModel.setEliminacaoIntestinal(request.getParameter("eliminacao_intestinal"));
		avaliacaoDeIntervencaoModel.setEstadoNeurologicoConsciencia(request.getParameter("estado_neurologico"));
		avaliacaoDeIntervencaoModel.setTermoregulacao(request.getParameter("termorregulacao"));
		avaliacaoDeIntervencaoModel.setNivelDor(request.getParameter("nivel_dor"));
		avaliacaoDeIntervencaoModel.setBemEstarEspiritual(request.getParameter("bem_estar_espiritual"));
		avaliacaoDeIntervencaoModel.setControleRiscoInfencao(request.getParameter("controle_risco"));
		avaliacaoDeIntervencaoModel.setObservacao(request.getParameter("obs"));
		avaliacaoDeIntervencaoModel.setDataUltimaActualizacao(Date.valueOf(LocalDate.now()));
		avaliacaoDeIntervencaoModel.setDataRegisto(Date.valueOf(LocalDate.now()));
		avaliacaoDeIntervencaoModel.setIdPaciente(Integer.parseInt(request.getParameter("cod_pacnt").trim()));
		avaliacaoDeIntervencaoModel.setPaciente(request.getParameter("paciente"));

		return avaliacaoDeIntervencaoModel;
	}

	public boolean facaLimpeza(String item) {
		atr.setVarboolean(false);
		if ((item != null) && (!item.isEmpty())) {
			atr.setVarboolean(true);
		}

		return atr.getVarboolean();
	}

	public ArrayList<String> listaNova(AvaliacaoDeIntervencaoModel avaliacaoIntervencaoModel) {
		listaAvaliacaoResposta = new ArrayList<String>();
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getSaturacaoOxigenioAcima94())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getSaturacaoOxigenioAcima94());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getEstadoFisiologicoFrequenciaCardiaca())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getEstadoFisiologicoFrequenciaCardiaca());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getControleAspiracaoViasAerea())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getControleAspiracaoViasAerea());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getHidratacao())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getHidratacao());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getEstadoCoagulacao())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getEstadoCoagulacao());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getEliminacaoUrinaria())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getEliminacaoUrinaria());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getEliminacaoIntestinal())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getEliminacaoIntestinal());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getEstadoNeurologicoConsciencia())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getEstadoNeurologicoConsciencia());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getTermoregulacao())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getTermoregulacao());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getNivelDor())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getNivelDor());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getBemEstarEspiritual())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getBemEstarEspiritual());
		}
		if (this.facaLimpeza(avaliacaoIntervencaoModel.getControleRiscoInfencao())) {
			listaAvaliacaoResposta.add(avaliacaoIntervencaoModel.getControleRiscoInfencao());
		}

		return listaAvaliacaoResposta;
	}
}
