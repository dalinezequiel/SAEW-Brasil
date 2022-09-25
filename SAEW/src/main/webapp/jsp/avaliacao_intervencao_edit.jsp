<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@page
    import="java.util.*"
    import="com.sae.controller.*"
    import="com.sae.dao.*"
    import="com.sae.model.*"%>
 
 <%
    GeradorDeCodigo gerador = new GeradorDeCodigo();
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/intervecoeslia.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<div class="parent">
<nav>
   <div class="nav-menu">
      <div class="nav-logo">
         <h1>SAE</h1>
      </div>
      <div class="nav-item">
          <ul>
               <li><a href="">Enfermagem</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li>
               <li><a href="">Sistema</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li>
          </ul>
      </div>
   </div>
</nav>
<div class="corp">
    <form action="../AvaliacaoDeIntervencaoActualizacaoServlet" method="POST">
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-enfermagem">
                  <button>
                     <i class="fa-solid fa-repeat"></i>
                     Actualizar Ava.
                  </button><!--  Diag. -->
                  
              </div>
              <div class="btn-relatorio">
              <a href="" class="butao">
                 <div class="butao-ico">
                     <i class="fa-solid fa-trash-can"></i>
                 </div>
                 <div class="text">
                   <p>Resetar Actuali.</p>
                 </div>
              </a>
           </div>
         </div>
      <div>
           <div class="btn-sair">
               <a href="avaliacao_intervencao_consult.jsp" class="butao">
                  <div class="butao-ico">
                     <i class="fa-sharp fa-solid fa-right-to-bracket"></i>
                  </div>
                 <div class="text">
                     <p>Voltar</p>
                 </div>
               </a>
           </div>
       </div>
       </div>
        <div class="avaliacao-cont">
            <div class="avaliacao-head">
               <div class="filtro">
                <div class="avaliacao-titulo">
                   <h3>Avaliação das Intervenções</h3>
                </div>
               </div>
               <div class="componente-item">
                   <div class="dir">
                      <!-- <form> -->
                          <%
                              ArrayList<PacienteModel> listPat = PacienteDAO.listaPacienteById(
                		      Integer.parseInt(request.getParameter("idPaciente").trim()));
                         
                              ArrayList<AvaliacaoDeIntervencaoModel> listAvalia = AvaliacaoDeIntervencaoDAO.listaAvaliacaoDeIntervencaoById(
                              Integer.parseInt(request.getParameter("idAvaliacaoIntervencao").trim()));
                          %>
                          
                          <div class="check-item">
                             <label>1. Saturação de O2 acima de 94%</label>
                          </div>
                          <div class="check-item">
                             <label>2. Estado fisiológico da frequê. respiratória</label>
                          </div>
                          <div class="check-item">
                             <label>3. Controle da aspiração de vias aéreas</label>
                          </div>
                          <div class="check-item">
                             <label>4. Hidratação</label>
                          </div>
                          <div class="check-item">
                             <label>5. Estado de coagulação</label>
                          </div>
                          <div class="check-item">
                             <label>6. Eliminação urinária</label>
                          </div>
                          <div class="check-item">
                             <label>7. Eliminação intestínal</label>
                          </div>
                          <div class="check-item">
                             <label>8. Estado neurológico da consciência</label>
                          </div>
                          <div class="check-item">
                             <label>9. Termorregulação</label>
                          </div>
                          <div class="check-item">
                             <label>10. Nível da dor</label>
                          </div>
                          <div class="check-item">
                             <label>11. Bem estar espiritual</label>
                          </div>
                          <div class="check-item">
                             <label>12. Controle de risco para infecção</label>
                          </div>
                          <div class="observacao">
                             <div>
                                <label>Observações</label>
                             </div>
                             <div class="t-area">
                                 <textarea rows="" cols="" name="obs"><%=listAvalia.get(0).getObservacao() %></textarea>
                             </div>
                          </div>
                      <!-- </form> -->
                   </div>
                   <div class="esq">
                       <!-- <form> -->
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-01" type="radio" name="saturacao_oxigenio" value="sa_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Saturação de O2 acima de 94%", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-01">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-02" type="radio" name="saturacao_oxigenio" value="sa_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Saturação de O2 acima de 94%", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-02">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-03" type="radio" name="saturacao_oxigenio" value="sa_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Saturação de O2 acima de 94%", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-03">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-04" type="radio" name="saturacao_oxigenio" value="sa_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Saturação de O2 acima de 94%", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-04">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-05" type="radio" name="estado_fisiologico" value="ef_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Estado fisiológico da frequência respiratória", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-05">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-06" type="radio" name="estado_fisiologico" value="ef_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Estado fisiológico da frequência respiratória", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-06">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-07" type="radio" name="estado_fisiologico" value="ef_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Estado fisiológico da frequência respiratória", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-07">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-08" type="radio" name="estado_fisiologico" value="ef_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Estado fisiológico da frequência respiratória", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-08">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-09" type="radio" name="controle_aspiracao" value="ca_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Controle da aspiração de vias aéreas", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-09">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-10" type="radio" name="controle_aspiracao" value="ca_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Controle da aspiração de vias aéreas", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-10">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-11" type="radio" name="controle_aspiracao" value="ca_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Controle da aspiração de vias aéreas", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-11">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-12" type="radio" name="controle_aspiracao" value="ca_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Controle da aspiração de vias aéreas", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-12">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-13" type="radio" name="hidratacao" value="hi_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Hidratação", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-13">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-14" type="radio" name="hidratacao" value="hi_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Hidratação", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-14">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-15" type="radio" name="hidratacao" value="hi_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Hidratação", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-15">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-16" type="radio" name="hidratacao" value="hi_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Hidratação", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-16">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-17" type="radio" name="estado_coagulacao" value="ec_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Estado de coagulação", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-17">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-18" type="radio" name="estado_coagulacao" value="ec_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Estado de coagulação", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-18">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-19" type="radio" name="estado_coagulacao" value="ec_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Estado de coagulação", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-19">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-20" type="radio" name="estado_coagulacao" value="ec_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Estado de coagulação", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-20">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-21" type="radio" name="eliminacao_urinaria" value="eu_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Eliminação urinária", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-21">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-22" type="radio" name="eliminacao_urinaria" value="eu_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Eliminação urinária", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-22">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-23" type="radio" name="eliminacao_urinaria" value="eu_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Eliminação urinária", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-23">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-24" type="radio" name="eliminacao_urinaria" value="eu_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Eliminação urinária", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-24">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-25" type="radio" name="eliminacao_intestinal" value="ei_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Eliminação intestínal", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-25">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-26" type="radio" name="eliminacao_intestinal" value="ei_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Eliminação intestínal", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-26">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-27" type="radio" name="eliminacao_intestinal" value="ei_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Eliminação intestínal", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-27">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-28" type="radio" name="eliminacao_intestinal" value="ei_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Eliminação intestínal", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-28">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-29" type="radio" name="estado_neurologico" value="en_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Estado neurológico da consciência", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-29">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-30" type="radio" name="estado_neurologico" value="en_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Estado neurológico da consciência", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-30">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-31" type="radio" name="estado_neurologico" value="en_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Estado neurológico da consciência", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-31">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-32" type="radio" name="estado_neurologico" value="en_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Estado neurológico da consciência", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-32">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-33" type="radio" name="termorregulacao" value="te_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Termorregulação", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-33">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-34" type="radio" name="termorregulacao" value="te_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Termorregulação", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-34">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-35" type="radio" name="termorregulacao" value="te_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Termorregulação", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-35">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-36" type="radio" name="termorregulacao" value="te_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Termorregulação", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-36">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-37" type="radio" name="nivel_dor" value="nd_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Nível da dor", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-37">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-38" type="radio" name="nivel_dor" value="nd_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Nível da dor", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-38">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-39" type="radio" name="nivel_dor" value="nd_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Nível da dor", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-39">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-40" type="radio" name="nivel_dor" value="nd_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Nível da dor", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-40">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-41" type="radio" name="bem_estar_espiritual" value="be_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Bem estar espiritual", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-41">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-42" type="radio" name="bem_estar_espiritual" value="be_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Bem estar espiritual", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-42">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-43" type="radio" name="bem_estar_espiritual" value="be_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Bem estar espiritual", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-43">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-44" type="radio" name="bem_estar_espiritual" value="be_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Bem estar espiritual", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-44">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-45" type="radio" name="controle_risco"  value="cr_Inalterado" <% if(VerificacaoJSP.verificaRadioButton("Controle de risco para infecção", "Inalterado", listAvalia)){%> checked <%}%>><label for="rd-45">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-46" type="radio" name="controle_risco" value="cr_Estabilizado" <% if(VerificacaoJSP.verificaRadioButton("Controle de risco para infecção", "Estabilizado", listAvalia)){%> checked <%}%>><label for="rd-46">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-47" type="radio" name="controle_risco" value="cr_Melhorado" <% if(VerificacaoJSP.verificaRadioButton("Controle de risco para infecção", "Melhorado", listAvalia)){%> checked <%}%>><label for="rd-47">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-48" type="radio" name="controle_risco" value="cr_Deteriorado" <% if(VerificacaoJSP.verificaRadioButton("Controle de risco para infecção", "Deteriorado", listAvalia)){%> checked <%}%>><label for="rd-48">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="legenda-cont">
                             <div>
                                 <label>Legenda</label>
                             </div>
                             <div class="legenda">
                                 <div class="leg-01">
                                     <div class="leg-inaltera">
                                        <p>I = INALTERADO</p>
                                     </div>
                                     <div>
                                        <p>E = ESTABILIZADO</p>
                                     </div>
                                 </div>
                                 <div class="leg-02">
                                     <div class="leg-inaltera">
                                        <p>M = MELHORADO</p>
                                     </div>
                                     <div>
                                        <p>D = DETERIORADO</p>
                                     </div>
                                 </div>
                                 <!-- <div class="leg-03">
                                     <div>
                                        <p>D = DETERIORADO</p>
                                     </div>
                                 </div> -->
                             </div>
                          </div>
                          
                      <!-- </form> -->
                   </div>
               </div>
            </div>
        </div>
        <div class="paciente">
            <div>
                <div class="codito">
                    <div class="input-codigo">
                       <div>
                          <label>Cod. Avalia.</label>
                       </div>
                       <div class="text">
                          <input type="text" name="cod_avaliac" value="<%= request.getParameter("idAvaliacaoIntervencao")%>" required>
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Cod. Pacnt.</label>
                       </div>
                       <div class="text">
                          <input type="text" name="cod_pacnt" value="<%= request.getParameter("idPaciente")%>" required>
                       </div>
                    </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Paciente</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text" name="paciente" value="<%=listPat.get(0).getPaciente() %>"required>
                     </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Queixa Principal</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text" name="queixa_principal" value="<%=listPat.get(0).getQueixaPrincipal() %>" required>
                     </div>
                </div>
                <div class="interna">
                    <div class="input-interna">
                       <div>
                          <label>Data de Internação</label>
                       </div>
                       <div class="text-internacao">
                          <input type="date" name="data_internacao" value="<%=listPat.get(0).getDataInternacao() %>" required>
                       </div>
                    </div>
                    <div class="input-leito-interna">
                       <div>
                          <label>Leito</label>
                       </div>
                       <div class="text-interna">
                          <input type="number" name="leito" value="<%=listPat.get(0).getLeito() %>" required>
                       </div>
                    </div>
                </div>
                <div class="nascimento">
                    <div class="input-nasc">
                       <div>
                          <label>Data de Nascimento</label>
                       </div>
                       <div class="text-nascimento">
                          <input type="date" name="data_nascimento" value="<%=listPat.get(0).getDataNascimento() %>" required>
                       </div>
                    </div>
                    <div class="input-leito-nasc">
                       <div>
                          <label>Idade</label>
                       </div>
                       <div class="text-nasc">
                          <input type="text" value="<%= new Data().getIdadeProcessada(String.valueOf(listPat.get(0).getDataNascimento())) %>">
                       </div>
                    </div>
                </div>
                <div class="periodo">
                    <div class="check-item">
                              <div>
                                  <label>Periódo</label>
                              </div>
                              <div class="comboBox">
                                  <select>
                                      <option>Matutino</option>
                                      <option>Noturno</option>
                                  </select>
                              </div>
                    </div>
                </div>
                <div class="periodo">
                    <div class="check-item">
                              <div>
                                  <label>Cadastre o paciente</label>
                              </div>
                              <div class="comboBox">
                                  <select name="salva_paciente">
                                      <option>Sim</option>
                                      <option>Não</option>
                                  </select>
                              </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    </form>
</div>
</div>
<script type="text/javascript" src="../script/diagnostico_edit.js"></script>
</body>
</html>