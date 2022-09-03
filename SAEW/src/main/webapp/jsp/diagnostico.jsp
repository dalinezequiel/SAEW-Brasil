<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
               <li><a href="">Utilitários</a>
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
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-avaliacao">
                  <a href="" class="butao">
                      <div class="butao-ico">
                         <i class="fa-solid fa-file-circle-plus"></i>
                      </div>
                      <div class="text">
                         <p>Novo Diagnóstico</p>
                      </div>
                  </a>
              </div>
              <div class="btn-enfermagem">
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-sharp fa-solid fa-microscope"></i>
                      </div>
                      <div class="text">
                          <p>Cadastrar</p>
                      </div>
                  </a>
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-user-doctor"></i>
                      </div>
                      <div class="text">
                          <p>Intervenções</p>
                      </div>
                  </a>
              </div>
           </div>
      <div>
           <div class="btn-relatorio">
              <a href="" class="butao">
                 <div class="butao-ico">
                     <i class="fa-solid fa-file-lines"></i>
                 </div>
                 <div class="text">
                   <p>Resetar</p>
                 </div>
              </a>
           </div>
           <div class="btn-sair">
               <a href="" class="butao">
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
                   <h3>Diagnóstico de Enfermagem</h3>
                </div>
                <div class="pesquisa">
                   <!-- Pesquisa -->
                </div>
               </div>
               <div class="componente-item">
                   <div class="dir">
                      <form>
                          <div class="check-item">
                              <div>
                                  <label>Perfusão tíssular</label>
                              </div>
                              <div class="comboBox">
                                  <select>
                                      <option>Renal</option>
                                      <option>Cardíopulmonar</option>
                                      <option>Cerebral</option>
                                      <option>Gastrinstestínal</option>
                                      <option>Periférica</option>
                                  </select>
                              </div>
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Comunicação verbal prejudicada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Confusão aguda
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Constipação intestínal
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Contusão aguda
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Deambulação prejudicada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Débito cardíaco diminuído
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Déficit de auto cuidado
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Deglutição prejudicada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Desobstrução ineficaz de vias aéreas
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Dor aguda
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Hipitermia
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Integridade da pele prejudicada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Integridade tíssular prejudicada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Intolerância a actividade
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Medo
                          </div>
                      </form>
                   </div>
                   <div class="esq">
                       <form>
                          <div class="check-item">
                             <input type="checkbox"> Menbrana mucosa prejudicada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Mobilidade física prejudicada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Mobilidade no leito prejudicada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Náusea
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Nutrição desequilibrada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Padrão respiratório ineficaz
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Risco para infecção
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Risco para temperatura corporal desequilibrada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Troca de gazes prejudicada
                          </div>
                          <div class="check-item">
                             <input type="checkbox"> Volume de líquidos deficiente
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
                          <label>Código</label>
                       </div>
                       <div class="text">
                          <input type="text">
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Leito</label>
                       </div>
                       <div class="text">
                          <input type="text">
                       </div>
                    </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Paciente</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text">
                     </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Queixa Principal</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text">
                     </div>
                </div>
                <div class="interna">
                    <div class="input-interna">
                       <div>
                          <label>Data de Internação</label>
                       </div>
                       <div class="text-internacao">
                          <input type="text">
                       </div>
                    </div>
                    <div class="input-leito-interna">
                       <div>
                          <label>Leito</label>
                       </div>
                       <div class="text-interna">
                          <input type="text">
                       </div>
                    </div>
                </div>
                <div class="nascimento">
                    <div class="input-nasc">
                       <div>
                          <label>Data de Nascimento</label>
                       </div>
                       <div class="text-nascimento">
                          <input type="text">
                       </div>
                    </div>
                    <div class="input-leito-nasc">
                       <div>
                          <label>Idade</label>
                       </div>
                       <div class="text-nasc">
                          <input type="text">
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
</div>
</div>
</body>
</html>