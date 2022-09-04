<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                         <p>Nova Avaliação</p>
                      </div>
                  </a>
              </div>
              <div class="btn-enfermagem">
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-sharp fa-solid fa-microscope"></i>
                      </div>
                      <div class="text">
                          <p>Buscar Paciente</p>
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
                   <h3>Avaliação das Intervenções</h3>
                </div>
                <!--<div class="pesquisa">
                   <input type="submit">
                </div>-->
               </div>
               <div class="componente-item">
                   <div class="dir">
                      <form>
                          
                          <div class="check-item">
                             <label>1. Saturação de O2 acima de 94%</label>
                          </div>
                          <div class="check-item">
                             <label>2. Estado fisiológico da frequência respiratória</label>
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
                                 <textarea rows="" cols=""></textarea>
                             </div>
                          </div>
                      </form>
                   </div>
                   <div class="esq">
                       <form>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="a"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="a"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="a"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="a"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="b"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio"  name="b"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio"  name="b"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio"  name="b"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio"  name="c"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="c"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="c"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="c"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="d"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="d"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="d"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="d"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="e"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="e"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="e"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="e"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="f"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="f"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="f"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="f"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="g"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="g"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="g"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="g"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="h"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="h"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="h"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="h"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="i"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="i"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="i"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="i"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="j"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="j"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="j"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="j"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="k"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="k"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="k"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="k"><label>D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input type="radio" name="l"><label>I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="l"><label>E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="l"><label>M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input type="radio" name="l"><label>D</label>
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
                                     <div>
                                        <p>M = MELHORADO</p>
                                     </div>
                                 </div>
                                 <div class="leg-03">
                                     <div>
                                        <p>D = DETERIORADO</p>
                                     </div>
                                 </div>
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