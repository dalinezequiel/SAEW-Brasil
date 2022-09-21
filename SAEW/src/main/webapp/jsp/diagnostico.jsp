<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page
    import="com.sae.controller.GeradorDeCodigo"%>
 <%
    GeradorDeCodigo gerador = new GeradorDeCodigo();
 %>
    
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
         <h1><a href="menu.jsp" style="color:black;">SAE</a></h1>
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
  <form action="../PacienteServlet" method="POST">
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-avaliacao">
                  <a href="#" class="butao">
                      <div class="butao-ico">
                         <i class="fa-solid fa-file-circle-plus"></i>
                      </div>
                      <div class="text">
                         <p>Novo Diagnóstico</p>
                      </div>
                  </a>
              </div>
              <div>
                  <button>
                     <i class="fa-solid fa-floppy-disk"></i>
                     Salvar Diagnóst.
                  </button>
              </div>
              <div class="btn-enfermagem">
                  <a href="paciente_consult.jsp" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-user-doctor"></i>
                      </div>
                      <div class="text">
                          <p>Buscar Paciente</p>
                      </div>
                  </a>
                  <a href="diagnostico_consult.jsp" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-list"></i>
                      </div>
                      <div class="text">
                          <p>Lista Diagnóst.</p>
                      </div>
                  </a>
              </div>
           </div>
      <div>
           <div class="btn-relatorio">
              <a href="" class="butao">
                 <div class="butao-ico">
                     <i class="fa-solid fa-trash-can"></i>
                 </div>
                 <div class="text">
                   <p>Resetar Diagnóst.</p>
                 </div>
              </a>
           </div>
           <div class="btn-sair">
               <a href="menu.jsp" class="butao">
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
                      <h3>Diagnósticos de Enfermagem</h3>
                  </div>

               </div>
               <div class="componente-item">
                   <div class="dir">
                      <!-- <form> -->
                          <div class="check-item">
                              <div>
                                  <label>Perfusão tíssular</label>
                              </div>
                              <div class="comboBox">
                                  <select name="perfusao">
                                      <option selected disabled>Escolha uma das opções</option>
                                      <option>Renal</option>
                                      <option>Cardiopulmonar</option>
                                      <option>Cerebral</option>
                                      <option>Gastrintestínal</option>
                                      <option>Periférica</option>
                                  </select>
                              </div>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-1" type="checkbox" name="diagnostico" value="Comunicação verbal prejudicada"> <label for="checkbox-1">Comunicação verbal prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-2" type="checkbox" name="diagnostico" value="Confusão aguda"> <label for="checkbox-2">Confusão aguda</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-3" type="checkbox" name="diagnostico" value="Constipação intestínal"> <label for="checkbox-3">Constipação intestínal</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-4" type="checkbox" name="diagnostico" value="Contusão aguda"> <label for="checkbox-4">Contusão aguda</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-5" type="checkbox" name="diagnostico" value="Deambulação prejudicada"> <label for="checkbox-5">Deambulação prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-6" type="checkbox" name="diagnostico" value="Débito cardíaco diminuído"> <label for="checkbox-6">Débito cardíaco diminuído</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-7" type="checkbox" name="diagnostico" value="Déficit de auto cuidado"> <label for="checkbox-7">Déficit de auto cuidado</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-8" type="checkbox" name="diagnostico" value="Deglutição prejudicada"> <label for="checkbox-8">Deglutição prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-9" type="checkbox" name="diagnostico" value="Desobstrução ineficaz de vias aéreas"> <label for="checkbox-9">Desobstrução ineficaz de vias aéreas</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-10" type="checkbox" name="diagnostico" value="Dor aguda"> <label for="checkbox-10">Dor aguda</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-11" type="checkbox" name="diagnostico" value="Hipitermia"> <label for="checkbox-11">Hipitermia</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-12" type="checkbox" name="diagnostico" value="Integridade da pele prejudicada"> <label for="checkbox-12">Integridade da pele prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-13" type="checkbox" name="diagnostico" value="Integridade tíssular prejudicada"> <label for="checkbox-13">Integridade tíssular prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-14" type="checkbox" name="diagnostico" value="Intolerância a actividade"> <label for="checkbox-14">Intolerância a actividade</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-15" type="checkbox" name="diagnostico" value="Medo"> <label for="checkbox-15">Medo</label>
                          </div>
                      <!-- </form> -->
                   </div>
                   <div class="esq">
                       <!-- <form> -->
                          <div class="check-item">
                             <input id="checkbox-16" type="checkbox" name="diagnostico" value="Menbrana mucosa prejudicada"> <label for="checkbox-16">Menbrana mucosa prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-17" type="checkbox" name="diagnostico" value="Mobilidade física prejudicada"> <label for="checkbox-17">Mobilidade física prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-18" type="checkbox" name="diagnostico" value="Mobilidade no leito prejudicada"> <label for="checkbox-18">Mobilidade no leito prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-19" type="checkbox" name="diagnostico" value="Náusea"> <label for="checkbox-19">Náusea</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-20" type="checkbox" name="diagnostico" value="Nutrição desequilibrada"> <label for="checkbox-20">Nutrição desequilibrada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-21" type="checkbox" name="diagnostico" value="Padrão respiratório ineficaz"> <label for="checkbox-21">Padrão respiratório ineficaz</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-22" type="checkbox" name="diagnostico" value="Risco para infecção"> <label for="checkbox-22">Risco para infecção</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-23" type="checkbox" name="diagnostico" value="Risco para temperatura corporal desequilibrada"> <label for="checkbox-23">Risco para temperatura corporal desequilibrada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-24" type="checkbox" name="diagnostico" value="Troca de gazes prejudicada"> <label for="checkbox-24">Troca de gazes prejudicada</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-25" type="checkbox" name="diagnostico" value="Volume de líquidos deficiente"> <label for="checkbox-25">Volume de líquidos deficiente</label>
                          </div>
                          
                          <div class="observacao">
                             <div>
                                <label>Observações</label>
                             </div>
                             <div class="t-area">
                                 <textarea rows="" cols="" name="obs"></textarea>
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
                          <label>Cod. Diagt.</label>
                       </div>
                       <div class="text">
                          <input type="text" name="cod_diagt" value=<%=gerador.gerandoCodigo()%> required readonly>
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Cod. Pacnt.</label>
                       </div>
                       <div class="text">
                          <input type="text" name="cod_pacnt" value=<%=gerador.gerandoCodigo()%> required readonly>
                       </div>
                    </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Paciente</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text" name="paciente" required>
                     </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Queixa Principal</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text" name="queixa_principal" required>
                     </div>
                </div>
                <div class="interna">
                    <div class="input-interna">
                       <div>
                          <label>Data de Internação</label>
                       </div>
                       <div class="text-internacao">
                          <input type="date" name="data_internacao" required>
                       </div>
                    </div>
                    <div class="input-leito-interna">
                       <div>
                          <label>Leito</label>
                       </div>
                       <div class="text-interna">
                          <input type="text" name="leito" required>
                       </div>
                    </div>
                </div>
                <div class="nascimento">
                    <div class="input-nasc">
                       <div>
                          <label>Data de Nascimento</label>
                       </div>
                       <div class="text-nascimento">
                          <input type="date" name="data_nascimento" required>
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
<script type="text/javascript" src="../script/diagnostico.js"></script>
</body>
</html>