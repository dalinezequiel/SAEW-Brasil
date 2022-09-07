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
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-avaliacao">
                  <a class="butao">
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
                          <i class="fa-solid fa-floppy-disk"></i>
                      </div>
                      <div class="text">
                          <p>Salvar Avaliação</p>
                      </div>
                  </a>
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-user-doctor"></i>
                      </div>
                      <div class="text">
                          <p>Buscar Paciente</p>
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
                   <p>Resetar Avaliação</p>
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
                                       <input id="rd-01" type="radio" name="a"><label for="rd-01">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-02" type="radio" name="a"><label for="rd-02">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-03" type="radio" name="a"><label for="rd-03">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-04" type="radio" name="a"><label for="rd-04">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-05" type="radio" name="b"><label for="rd-05">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-06" type="radio"  name="b"><label for="rd-06">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-07" type="radio"  name="b"><label for="rd-07">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-08" type="radio"  name="b"><label for="rd-08">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-09" type="radio"  name="c"><label for="rd-09">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-10" type="radio" name="c"><label for="rd-10">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-11" type="radio" name="c"><label for="rd-11">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-12" type="radio" name="c"><label for="rd-12">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-13" type="radio" name="d"><label for="rd-13">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-14" type="radio" name="d"><label for="rd-14">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-15" type="radio" name="d"><label for="rd-15">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-16" type="radio" name="d"><label for="rd-16">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-17" type="radio" name="e"><label for="rd-17">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-18" type="radio" name="e"><label for="rd-18">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-19" type="radio" name="e"><label for="rd-19">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-20" type="radio" name="e"><label for="rd-20">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-21" type="radio" name="f"><label for="rd-21">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-22" type="radio" name="f"><label for="rd-22">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-23" type="radio" name="f"><label for="rd-23">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-24" type="radio" name="f"><label for="rd-24">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-25" type="radio" name="g"><label for="rd-25">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-26" type="radio" name="g"><label for="rd-26">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-27" type="radio" name="g"><label for="rd-27">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-28" type="radio" name="g"><label for="rd-28">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-29" type="radio" name="h"><label for="rd-29">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-30" type="radio" name="h"><label for="rd-30">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-31" type="radio" name="h"><label for="rd-31">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-32" type="radio" name="h"><label for="rd-32">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-33" type="radio" name="i"><label for="rd-33">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-34" type="radio" name="i"><label for="rd-34">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-35" type="radio" name="i"><label for="rd-35">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-36" type="radio" name="i"><label for="rd-36">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-37" type="radio" name="j"><label for="rd-37">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-38" type="radio" name="j"><label for="rd-38">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-39" type="radio" name="j"><label for="rd-39">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-40" type="radio" name="j"><label for="rd-40">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-41" type="radio" name="k"><label for="rd-41">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-42" type="radio" name="k"><label for="rd-42">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-43" type="radio" name="k"><label for="rd-43">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-44" type="radio" name="k"><label for="rd-44">D</label>
                                  </div>
                             </div>
                          </div>
                          <div class="check-item">
                             <div class="radio-cont">
                                  <div class="radio-item">
                                       <input id="rd-45" type="radio" name="l"><label for="rd-45">I</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-46" type="radio" name="l"><label for="rd-46">E</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-47" type="radio" name="l"><label for="rd-47">M</label>
                                  </div>
                                  <div class="radio-item">
                                       <input id="rd-48" type="radio" name="l"><label for="rd-48">D</label>
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
<script type="text/javascript" src="../script/intervencoeslia.js"></script>
</body>
</html>