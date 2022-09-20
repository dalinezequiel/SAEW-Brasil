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
<link rel="stylesheet" href="../css/diagnostico.css">
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
          </ul>
      </div>
   </div>
</nav>
<div class="corp">
<form action="PacientServlet" method="POST">
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-enfermagem">
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-repeat"></i>
                      </div>
                      <div class="text">
                          <p>Actualizar Diag.</p>
                      </div>
                  </a>
                  
              </div>
              <div class="btn-relatorio">
              <a href="" class="butao">
                 <div class="butao-ico">
                     <i class="fa-solid fa-trash-can"></i>
                 </div>
                 <div class="text">
                   <p>Resetar Actualiz.</p>
                 </div>
              </a>
           </div>
           </div>
      <div>
           
           <div class="btn-sair">
               <a href="diagnostico_consult.jsp" class="butao">
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
                      <h3>Actualizar diagnósticos de Enfermagem</h3>
                  </div>
                  <!--<div class="pesquisa">
                      <input type="submit">
                  </div>-->
               </div>
               <div class="componente-item">
                   <div class="dir">
                      <form>
                         <%
                              ArrayList<PacienteModel> listPat = PacienteDAO.listaPacienteById(
                		      Integer.parseInt(request.getParameter("idPaciente").trim()));
                         
                              ArrayList<DiagnosticoModel> listDiag = DiagnosticoDAO.listaDiagnosticoById(
                              Integer.parseInt(request.getParameter("idDiagnostico").trim()));
                          %>
                          <div class="check-item">
                              <div>
                                  <label>Perfusão tíssular</label>
                              </div>
                              <div class="comboBox">
                                  <select>
                                      <option selected disabled>Escolha uma das opções</option>
                                      <option>Renal</option>
                                      <option>Cardíopulmonar</option>
                                      <option>Cerebral</option>
                                      <option>Gastrinstestínal</option>
                                      <option>Periférica</option>
                                  </select>
                              </div>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-1" type="checkbox" name="diagnostico" value="Comunicação verbal prejudicada" <% if(VerificacaoJSP.verificaCheckBox(Integer.parseInt(request.getParameter("idDiagnostico").trim() ),"Comunicação verbal prejudicada")){%> checked <%}%>> <label class="diagnost" for="checkbox-1">Comunicação verbal prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-2" type="checkbox" name="diagnostico" value="Confusão aguda" <% if(VerificacaoJSP.verificaCheckBox(Integer.parseInt(request.getParameter("idDiagnostico").trim() ),"Confusão aguda")){%> checked <%}%>> <label class="diagnost" for="checkbox-2">Confusão aguda</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-3" type="checkbox" name="diagnostico" value="Constipação intestínal" <% if(VerificacaoJSP.verificaCheckBox(Integer.parseInt(request.getParameter("idDiagnostico").trim() ),"Constipação intestínal")){%> checked <%}%>> <label class="diagnost" for="checkbox-3">Constipação intestínal</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-4" type="checkbox" name="diagnostico" value="Contusão aguda" <% if(VerificacaoJSP.verificaCheckBox(Integer.parseInt(request.getParameter("idDiagnostico").trim() ),"Contusão aguda")){%> checked <%}%>> <label class="diagnost" for="checkbox-4">Contusão aguda</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-5" type="checkbox" name="diagnostico" value="Deambulação prejudicada" <% if(VerificacaoJSP.verificaCheckBox(Integer.parseInt(request.getParameter("idDiagnostico").trim() ),"Deambulação prejudicada")){%> checked <%}%>> <label class="diagnost" for="checkbox-5">Deambulação prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-6" type="checkbox" name="diagnostico" value="Débito cardíaco diminuído" <% if(VerificacaoJSP.verificaCheckBox(Integer.parseInt(request.getParameter("idDiagnostico").trim() ),"Débito cardíaco diminuído")){%> checked <%}%>> <label class="diagnost" for="checkbox-6">Débito cardíaco diminuído</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-7" type="checkbox" name="diagnostico" value="Déficit de auto cuidado" <% if(VerificacaoJSP.verificaCheckBox(Integer.parseInt(request.getParameter("idDiagnostico").trim() ),"Déficit de auto cuidado")){%> checked <%}%>> <label class="diagnost" for="checkbox-7">Déficit de auto cuidado</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-8" type="checkbox"> <label for="checkbox-8">Deglutição prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-9" type="checkbox"> <label for="checkbox-9">Desobstrução ineficaz de vias aéreas</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-10" type="checkbox"> <label for="checkbox-10">Dor aguda</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-11" type="checkbox"> <label for="checkbox-11">Hipitermia</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-12" type="checkbox"> <label for="checkbox-12">Integridade da pele prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-13" type="checkbox"> <label for="checkbox-13">Integridade tíssular prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-14" type="checkbox"> <label for="checkbox-14">Intolerância a actividade</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-15" type="checkbox"> <label for="checkbox-15">Medo</label>
                          </div>
                      </form>
                   </div>
                   <div class="esq">
                       <form>
                          <div class="check-item">
                             <input id="checkbox-16" type="checkbox"> <label for="checkbox-16">Menbrana mucosa prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-17" type="checkbox"> <label for="checkbox-17">Mobilidade física prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-18" type="checkbox"> <label for="checkbox-18">Mobilidade no leito prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-19" type="checkbox"> <label for="checkbox-19">Náusea</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-20" type="checkbox"> <label for="checkbox-20">Nutrição desequilibrada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-21" type="checkbox"> <label for="checkbox-21">Padrão respiratório ineficaz</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-22" type="checkbox"> <label for="checkbox-22">Risco para infecção</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-23" type="checkbox"> <label for="checkbox-23">Risco para temperatura corporal desequilibrada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-24" type="checkbox"> <label for="checkbox-24">Troca de gazes prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-25" type="checkbox"> <label for="checkbox-25">Volume de líquidos deficiente</label>
                          </div>
                          
                          <div class="observacao">
                             <div>
                                <label>Observações</label>
                             </div>
                             <div class="t-area">
                                 <textarea rows="" cols=""></textarea>
                             </div>
                          </div>
                          
                      </form>
                   </div>
               </div>
            </div>
        </div>
        <div class="paciente">
            <div>
                <div class="codito">
                    <div class="input-codigo">
                       <div>
                          <label>Cod. Diagt.</label>
                       </div>
                       <div class="text">

                          <input type="text" name="cod_diagt" value="<%= request.getParameter("idDiagnostico")%>">
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Cod. Pacnt.</label>
                       </div>
                       <div class="text">
                          <input type="text" value="<%= request.getParameter("idPaciente")%>">
                       </div>
                    </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Paciente</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text" value="<%=listPat.get(0).getPaciente() %>">
                     </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Queixa Principal</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text" value="<%=listPat.get(0).getQueixaPrincipal() %>">
                     </div>
                </div>
                <div class="interna">
                    <div class="input-interna">
                       <div>
                          <label>Data de Internação</label>
                       </div>
                       <div class="text-internacao">
                          <input type="date" value="<%=listPat.get(0).getDataInternacao() %>">
                       </div>
                    </div>
                    <div class="input-leito-interna">
                       <div>
                          <label>Leito</label>
                       </div>
                       <div class="text-interna">
                          <input type="text" value="<%=listPat.get(0).getLeito() %>">
                       </div>
                    </div>
                </div>
                <div class="nascimento">
                    <div class="input-nasc">
                       <div>
                          <label>Data de Nascimento</label>
                       </div>
                       <div class="text-nascimento">
                          <input type="date" value="<%=listPat.get(0).getDataNascimento() %>">
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
                
            </div>
        </div>
    </div>
    </form>
</div>
</div>
<script type="text/javascript" src="../script/diagnostico_edit.js"></script>
</body>
</html>