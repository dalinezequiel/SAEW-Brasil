<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page
    import="java.util.*"
    import="com.sae.controller.*"
    import="com.sae.dao.*"
    import="com.sae.model.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/intervencao_edit.css">
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
               <!-- <li><a href="">Utilitários</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li> -->
               <li><a href="">Sistema</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li>
          </ul>
      </div>
   </div>
</nav>
<div class="corp">
    <form action="../IntervencaoActualizacaoServlet" method="POST">
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-enfermagem">
                  <button>
                     <i class="fa-solid fa-repeat"></i>
                     Actualizar Inte.
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
               <a href="intervencoes_consult.jsp" class="butao">
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
                   <h3>Actualizar intervenções de Enfermagem</h3>
                </div>
               </div>
               <div class="componente-item">
                   <div class="dir">
                      <!-- <form> -->
                           <%
                              ArrayList<PacienteModel> listPat = PacienteDAO.listaPacienteById(
                		      Integer.parseInt(request.getParameter("idPaciente").trim()));
                         
                              ArrayList<IntervencaoModel> listInter = IntervencaoDAO.listaIntervencaoById(
                              Integer.parseInt(request.getParameter("idIntervencao").trim()));
                          %>
                          
                          <div class="check-item">
                              <div>
                                  <label>Realizar a troca de acesso<br> venoso periférico de 72 em 72horas</label>
                              </div>
                              <div class="comboBox">
                                  <select name="acesso_venoso_periferico">
                                      <option <% if(VerificacaoJSP.verificaComboBoxInter("Hoje Sim", listInter)){%> selected <%}%>>Hoje Sim</option>
                                      <option <% if(VerificacaoJSP.verificaComboBoxInter("Hoje Não", listInter)){%> selected <%}%>>Hoje Não</option>
                                  </select>
                              </div>
                          </div>
                          <fieldset class="fieldset_input">
                             <legend>Verificar HGT</legend>
                             <!-- <div class="input_label"> -->
                                 <div class="input-vezes">
                                    <label>N° Vezes</label>
                                    <input type="number" min="0" placeholder="Ex: 04" name="verificar_hgt_veze" value="<%= VerificacaoJSP.devolveCaracterDaPrimeiraPosicao(VerificacaoJSP.devolveDivisaoDoItemDoInput(VerificacaoJSP.verificaIgualidadeNoInput("Verificar HGT", listInter),0))%>">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <input type="date" name="verificar_hgt_data" value="<%= VerificacaoJSP.devolveDivisaoDoItemDoInputParaData(VerificacaoJSP.verificaIgualidadeNoInput("Verificar HGT", listInter), 1)%>">
                                 </div>
                            <!--  </div> -->
                          </fieldset>
                          
                          <fieldset class="fieldset_input">
                             <legend>Verificar a saturação de oxigênio</legend>
                                 <div class="input-vezes">
                                    <label>Há cada</label>
                                    <input type="time" placeholder="Ex: 04horas" name="verificar_o2_hacada" value="<%= VerificacaoJSP.devolveAHora(VerificacaoJSP.devolveDivisaoDoItemDoInput(VerificacaoJSP.verificaIgualidadeNoInput("Verificar a saturação de oxigênio", listInter),0)) %>">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <div>
                                        <input type="date" name="verificar_o2_data" value="<%= VerificacaoJSP.devolveDivisaoDoItemDoInputParaData(VerificacaoJSP.verificaIgualidadeNoInput("Verificar a saturação de oxigênio", listInter), 1)%>">
                                    </div>
                                 </div>
                          </fieldset>
                          
                          <fieldset class="fieldset_input">
                             <legend>Realizar/ auxiliar banho no leito</legend>
                                 <!-- <div class="input_label"> -->
                                 <div class="input-vezes">
                                    <label>Há cada</label>
                                    <input type="time" placeholder="Ex: 04horas" name="auxilar_banho_leito_hacada" value="<%= VerificacaoJSP.devolveAHora(VerificacaoJSP.devolveDivisaoDoItemDoInput(VerificacaoJSP.verificaIgualidadeNoInput("Realizar/ auxiliar banho no leito", listInter),0)) %>">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <div>
                                        <input type="date" name="auxilar_banho_leito_data" value="<%= VerificacaoJSP.devolveDivisaoDoItemDoInputParaData(VerificacaoJSP.verificaIgualidadeNoInput("Realizar/ auxiliar banho no leito", listInter), 1)%>">
                                    </div>
                                 </div>
                             <!-- </div> -->
                          </fieldset>
                          
                          <fieldset class="fieldset_input">
                             <legend>Realizar aspiração orotraqueal</legend>
                                 <!-- <div class="input_label"> -->
                                 <div class="input-vezes">
                                    <label>Há cada</label>
                                    <input type="time" placeholder="Ex: 04horas" name="aspiracao_orotraqueal_hacada" value="<%= VerificacaoJSP.devolveAHora(VerificacaoJSP.devolveDivisaoDoItemDoInput(VerificacaoJSP.verificaIgualidadeNoInput("Realizar aspiração orotraqueal", listInter),0)) %>">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <div>
                                        <input type="date" name="aspiracao_orotraqueal_data" value="<%= VerificacaoJSP.devolveDivisaoDoItemDoInputParaData(VerificacaoJSP.verificaIgualidadeNoInput("Realizar aspiração orotraqueal", listInter), 1)%>">
                                    </div>
                                 </div>
                             <!-- </div> -->
                          </fieldset>
                          
                      <!-- </form> -->
                   </div>
                   <div class="esq">
                       <!-- <form> -->
                          <div class="check-item">
                             <input id="checkbox-1" type="checkbox" name="intervencao" value="Observação no leito de 4 em 4 horas 02 06 10 14 18 22" <% if(VerificacaoJSP.verificaCheckBoxInter("Observação no leito de 4 em 4 horas 02 06 10 14 18 22", listInter)){%> checked <%}%>> <label for="checkbox-1">Observação no leito de 4 em 4 horas 02 06 10 14 18 22</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-2" type="checkbox" name="intervencao" value="Verificar sinais vitais de 08 em 08 horas 14 22 06" <% if(VerificacaoJSP.verificaCheckBoxInter("Verificar sinais vitais de 08 em 08 horas 14 22 06", listInter)){%> checked <%}%>> <label for="checkbox-2">Verificar sinais vitais de 08 em 08 horas 14 22 06</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-3" type="checkbox" name="intervencao" value="Realizar mudança de decúbito de 2/2horas 08 10 12 14 16 18 20 22 24 02 04 06" <% if(VerificacaoJSP.verificaCheckBoxInter("Realizar mudança de decúbito de 2/2horas 08 10 12 14 16 18 20 22 24 02 04 06", listInter)){%> checked <%}%>> <label for="checkbox-3">Realizar mudança de decúbito de 2/2horas 08 10 12 14 16 18 20 22 24 02 04 06</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-4" type="checkbox" name="intervencao" value="Avaliar e anotar eliminações vesícais e intestínais" <% if(VerificacaoJSP.verificaCheckBoxInter("Avaliar e anotar eliminações vesícais e intestínais", listInter)){%> checked <%}%>> <label for="checkbox-4">Avaliar e anotar eliminações vesícais e intestínais</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-5" type="checkbox" name="intervencao" value="Manter a cabeceira elevada a 45graus" <% if(VerificacaoJSP.verificaCheckBoxInter("Manter a cabeceira elevada a 45graus", listInter)){%> checked <%}%>> <label for="checkbox-5">Manter a cabeceira elevada a 45graus</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-6" type="checkbox" name="intervencao" value="Avaliar sinais de febrite" <% if(VerificacaoJSP.verificaCheckBoxInter("Avaliar sinais de febrite", listInter)){%> checked <%}%>> <label for="checkbox-6">Avaliar sinais de febrite</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-7" type="checkbox" name="intervencao" value="Promover imobilização dos membros fraturados" <% if(VerificacaoJSP.verificaCheckBoxInter("Promover imobilização dos membros fraturados", listInter)){%> checked <%}%>> <label for="checkbox-7">Promover imobilização dos membros fraturados</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-8" type="checkbox" name="intervencao" value="Oferecer suporte emocional" <% if(VerificacaoJSP.verificaCheckBoxInter("Oferecer suporte emocional", listInter)){%> checked <%}%>> <label for="checkbox-8">Oferecer suporte emocional</label>
                          </div>
                          
                          <div class="curativo-item">
                             <div>
                                 <label>Realizar curativo</label>
                             </div>
                             <div class="input-curativo">
                                 <input type="text" name="realizar_curativo"  value="<%= VerificacaoJSP.verificaEDevolveResposta("Realizar curativo", listInter).trim()%>">
                             </div>
                          </div>
                          
                          <!-- <div class="observacao">
                             <div>
                                <label>Observações</label>
                             </div>
                             <div class="t-area">
                                 <textarea rows="" cols="" name="obs"></textarea>
                             </div>
                          </div> -->
                          
                     <!--  </form> -->
                   </div>
               </div>
            </div>
        </div>
        <div class="paciente">
            <div>
                <div class="codito">
                    <div class="input-codigo">
                       <div>
                          <label>Cod. Interv.</label>
                       </div>
                       <div class="text">
                          <input type="text" name="cod_interv" value="<%= request.getParameter("idIntervencao")%>">
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Cod. Pacnt.</label>
                       </div>
                       <div class="text">
                          <input type="text" name="cod_pacnt" value="<%= request.getParameter("idPaciente")%>">
                       </div>
                    </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Paciente</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text" name="paciente" value="<%=listPat.get(0).getPaciente() %>">
                     </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Queixa Principal</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text" name="queixa_principal" value="<%=listPat.get(0).getQueixaPrincipal() %>">
                     </div>
                </div>
                <div class="interna">
                    <div class="input-interna">
                       <div>
                          <label>Data de Internação</label>
                       </div>
                       <div class="text-internacao">
                          <input type="date" name="data_internacao" value="<%=listPat.get(0).getDataInternacao() %>">
                       </div>
                    </div>
                    <div class="input-leito-interna">
                       <div>
                          <label>Leito</label>
                       </div>
                       <div class="text-interna">
                          <input type="text" name="leito" value="<%=listPat.get(0).getLeito() %>">
                       </div>
                    </div>
                </div>
                <div class="nascimento">
                    <div class="input-nasc">
                       <div>
                          <label>Data de Nascimento</label>
                       </div>
                       <div class="text-nascimento">
                          <input type="date" name="data_nascimento" value="<%=listPat.get(0).getDataNascimento() %>">
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
                
                <div class="observacao">
                     <div>
                          <label>Observações</label>
                     </div>
                     <div class="t-area">
                          <textarea rows="" cols="" name="obs"><%=listInter.get(0).getObservacao() %></textarea>
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