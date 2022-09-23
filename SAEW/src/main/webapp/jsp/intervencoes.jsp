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
<link rel="stylesheet" href="../css/intervencoes.css">
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
    <form action="../IntervencaoCadastroServlet" method="POST">
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-avaliacao">
                  <a class="butao">
                      <div class="butao-ico">
                         <i class="fa-solid fa-file-circle-plus"></i>
                      </div>
                      <div class="text">
                         <p>Nova Intervenção</p>
                      </div>
                  </a>
              </div>
              <div>
                  <button>
                     <i class="fa-solid fa-floppy-disk"></i>
                     Salvar Intervenç.
                  </button>
              </div>
              <div class="btn-enfermagem">
                  <a href="paciente_intervencao_consult.jsp" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-user-doctor"></i>
                      </div>
                      <div class="text">
                          <p>Buscar Paciente</p>
                      </div>
                  </a>
                  <a href="intervencoes_consult.jsp" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-list"></i>
                      </div>
                      <div class="text">
                          <p>Lista Intervenç.</p>
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
                   <p>Resetar Intervenç.</p>
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
                   <h3>Intervenções de Enfermagem</h3>
                </div>
               </div>
               <div class="componente-item">
                   <div class="dir">
                      <!-- <form> -->
                          <div class="check-item">
                              <div>
                                  <label>Realizar a troca de acesso<br> venoso periférico de 72 em 72horas</label>
                              </div>
                              <div class="comboBox">
                                  <select name="acesso_venoso_periferico">
                                      <option>Hoje Sim</option>
                                      <option>Hoje Não</option>
                                  </select>
                              </div>
                          </div>
                          <fieldset class="fieldset_input">
                             <legend>Verificar HGT</legend>
                             <!-- <div class="input_label"> -->
                                 <div class="input-vezes">
                                    <label>N° Vezes</label>
                                    <input type="text" placeholder="Ex: 04">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <input type="date">
                                 </div>
                            <!--  </div> -->
                          </fieldset>
                          
                          <fieldset class="fieldset_input">
                             <legend>Verificar a saturação de oxigênio</legend>
                                 <div class="input-vezes">
                                    <label>Há cada</label>
                                    <input type="text" placeholder="Ex: 04horas">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <div>
                                        <input type="date">
                                    </div>
                                 </div>
                          </fieldset>
                          
                          <fieldset class="fieldset_input">
                             <legend>Realizar/ auxiliar banho no leito</legend>
                                 <!-- <div class="input_label"> -->
                                 <div class="input-vezes">
                                    <label>Há cada</label>
                                    <input type="text" placeholder="Ex: 04horas">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <div>
                                        <input type="date">
                                    </div>
                                 </div>
                             <!-- </div> -->
                          </fieldset>
                          
                          <fieldset class="fieldset_input">
                             <legend>Realizar aspiração orotraqueal</legend>
                                 <!-- <div class="input_label"> -->
                                 <div class="input-vezes">
                                    <label>Há cada</label>
                                    <input type="text" placeholder="Ex: 04horas">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <div>
                                        <input type="date">
                                    </div>
                                 </div>
                             <!-- </div> -->
                          </fieldset>
                          
                      <!-- </form> -->
                   </div>
                   <div class="esq">
                       <!-- <form> -->
                          <div class="check-item">
                             <input id="checkbox-1" type="checkbox" name="intervencao" value="Observação no leito de 4 em 4 horas 02 06 10 14 18 22"> <label for="checkbox-1">Observação no leito de 4 em 4 horas 02 06 10 14 18 22</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-2" type="checkbox" name="intervencao" value="Verificar sinais vitais de 08 em 08 horas 14 22 06"> <label for="checkbox-2">Verificar sinais vitais de 08 em 08 horas 14 22 06</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-3" type="checkbox" name="intervencao"> <label for="checkbox-3">Realizar mudança de decúbito de 2/2horas 08 10 12 14 16 18 20 22 24 02 04 06</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-4" type="checkbox" name="intervencao" value="Realizar mudança de decúbito de 2/2horas 08 10 12 14 16 18 20 22 24 02 04 06"> <label for="checkbox-4">Avaliar e anotar eliminações vesícais e intestínais</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-5" type="checkbox" name="intervencao" value="Manter a cabeceira elevada a 45graus"> <label for="checkbox-5">Manter a cabeceira elevada a 45graus</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-6" type="checkbox" name="intervencao" value="Avaliar sinais de febrite"> <label for="checkbox-6">Avaliar sinais de febrite</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-7" type="checkbox" name="intervencao" value="Promover imobilização dos membros fraturados"> <label for="checkbox-7">Promover imobilização dos membros fraturados</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-8" type="checkbox" name="intervencao" value="Oferecer suporte emocional"> <label for="checkbox-8">Oferecer suporte emocional</label>
                          </div>
                          
                          <div class="curativo-item">
                             <div>
                                 <label>Realizar curativo</label>
                             </div>
                             <div class="input-curativo">
                                 <input type="text" name="realizar_curativo">
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
                          <input type="text" name="cod_interv" value=<%=gerador.gerandoCodigo()%> required>
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Cod. Pacnt.</label>
                       </div>
                       <div class="text">
                          <input type="text" name="cod_pacnt" value=<%=gerador.gerandoCodigo()%> required>
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
                    <!-- <div class="input-leito-nasc">
                       <div>
                          <label>Idade</label>
                       </div>
                       <div class="text-nasc">
                          <input type="text">
                       </div>
                    </div> -->
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
                
                <div class="observacao">
                     <div>
                          <label>Observações</label>
                     </div>
                     <div class="t-area">
                          <textarea rows="" cols="" name="obs"></textarea>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    </form>
</div>
</div>
<script type="text/javascript" src="../script/intervencoes.js"></script>
</body>
</html>